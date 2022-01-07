
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor_id ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct radius_msg {int dummy; } ;
struct radius_attr_vendor {int vendor_length; int vendor_type; } ;
struct radius_attr_hdr {int dummy; } ;
typedef int salt ;


 int RADIUS_ATTR_VENDOR_SPECIFIC ;
 int RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY ;
 int RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY ;
 int RADIUS_VENDOR_ID_MICROSOFT ;
 int WPA_PUT_BE16 (int *,int) ;
 int encrypt_ms_key (int const*,size_t,int,int const*,int const*,size_t,int *,size_t*) ;
 int htonl (int ) ;
 int os_free (int *) ;
 scalar_t__ os_get_random (int *,int) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int *,int) ;
 struct radius_attr_hdr* radius_msg_add_attr (struct radius_msg*,int ,int *,int) ;

int radius_msg_add_mppe_keys(struct radius_msg *msg,
        const u8 *req_authenticator,
        const u8 *secret, size_t secret_len,
        const u8 *send_key, size_t send_key_len,
        const u8 *recv_key, size_t recv_key_len)
{
 struct radius_attr_hdr *attr;
 u32 vendor_id = htonl(RADIUS_VENDOR_ID_MICROSOFT);
 u8 *buf;
 struct radius_attr_vendor *vhdr;
 u8 *pos;
 size_t elen;
 int hlen;
 u16 salt;

 hlen = sizeof(vendor_id) + sizeof(*vhdr) + 2;


 buf = os_malloc(hlen + send_key_len + 16);
 if (buf == ((void*)0)) {
  return 0;
 }
 pos = buf;
 os_memcpy(pos, &vendor_id, sizeof(vendor_id));
 pos += sizeof(vendor_id);
 vhdr = (struct radius_attr_vendor *) pos;
 vhdr->vendor_type = RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY;
 pos = (u8 *) (vhdr + 1);
 if (os_get_random((u8 *) &salt, sizeof(salt)) < 0) {
  os_free(buf);
  return 0;
 }
 salt |= 0x8000;
 WPA_PUT_BE16(pos, salt);
 pos += 2;
 encrypt_ms_key(send_key, send_key_len, salt, req_authenticator, secret,
         secret_len, pos, &elen);
 vhdr->vendor_length = hlen + elen - sizeof(vendor_id);

 attr = radius_msg_add_attr(msg, RADIUS_ATTR_VENDOR_SPECIFIC,
       buf, hlen + elen);
 os_free(buf);
 if (attr == ((void*)0)) {
  return 0;
 }


 buf = os_malloc(hlen + recv_key_len + 16);
 if (buf == ((void*)0)) {
  return 0;
 }
 pos = buf;
 os_memcpy(pos, &vendor_id, sizeof(vendor_id));
 pos += sizeof(vendor_id);
 vhdr = (struct radius_attr_vendor *) pos;
 vhdr->vendor_type = RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY;
 pos = (u8 *) (vhdr + 1);
 salt ^= 1;
 WPA_PUT_BE16(pos, salt);
 pos += 2;
 encrypt_ms_key(recv_key, recv_key_len, salt, req_authenticator, secret,
         secret_len, pos, &elen);
 vhdr->vendor_length = hlen + elen - sizeof(vendor_id);

 attr = radius_msg_add_attr(msg, RADIUS_ATTR_VENDOR_SPECIFIC,
       buf, hlen + elen);
 os_free(buf);
 if (attr == ((void*)0)) {
  return 0;
 }

 return 1;
}
