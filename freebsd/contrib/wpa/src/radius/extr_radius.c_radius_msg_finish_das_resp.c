
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {int buf; TYPE_1__* hdr; } ;
struct radius_hdr {int authenticator; } ;
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {int authenticator; int length; } ;


 int MD5_MAC_LEN ;
 int MSG_WARNING ;
 int RADIUS_ATTR_MESSAGE_AUTHENTICATOR ;
 int hmac_md5 (int const*,size_t,int ,int,int *) ;
 int host_to_be16 (int) ;
 scalar_t__ md5_vector (int,int const**,size_t*,int ) ;
 int os_memcpy (int ,int ,int) ;
 int os_memset (int *,int ,int) ;
 struct radius_attr_hdr* radius_msg_add_attr (struct radius_msg*,int ,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_head (int ) ;
 int * wpabuf_head_u8 (int ) ;
 int wpabuf_len (int ) ;

int radius_msg_finish_das_resp(struct radius_msg *msg, const u8 *secret,
          size_t secret_len,
          const struct radius_hdr *req_hdr)
{
 const u8 *addr[2];
 size_t len[2];
 u8 auth[MD5_MAC_LEN];
 struct radius_attr_hdr *attr;

 os_memset(auth, 0, MD5_MAC_LEN);
 attr = radius_msg_add_attr(msg, RADIUS_ATTR_MESSAGE_AUTHENTICATOR,
       auth, MD5_MAC_LEN);
 if (attr == ((void*)0)) {
  wpa_printf(MSG_WARNING, "Could not add Message-Authenticator");
  return -1;
 }

 msg->hdr->length = host_to_be16(wpabuf_len(msg->buf));
 os_memcpy(msg->hdr->authenticator, req_hdr->authenticator, 16);
 hmac_md5(secret, secret_len, wpabuf_head(msg->buf),
   wpabuf_len(msg->buf), (u8 *) (attr + 1));


 addr[0] = wpabuf_head_u8(msg->buf);
 len[0] = wpabuf_len(msg->buf);
 addr[1] = secret;
 len[1] = secret_len;
 if (md5_vector(2, addr, len, msg->hdr->authenticator) < 0)
  return -1;

 if (wpabuf_len(msg->buf) > 0xffff) {
  wpa_printf(MSG_WARNING, "RADIUS: Too long message (%lu)",
      (unsigned long) wpabuf_len(msg->buf));
  return -1;
 }
 return 0;
}
