
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {TYPE_1__* hdr; } ;
struct radius_ms_mppe_keys {void* recv; int recv_len; void* send; int send_len; } ;
struct TYPE_2__ {int authenticator; } ;


 int MSG_DEBUG ;
 int RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY ;
 int RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY ;
 int RADIUS_VENDOR_ID_MICROSOFT ;
 void* decrypt_ms_key (int *,size_t,int ,int const*,size_t,int *) ;
 int os_free (int *) ;
 struct radius_ms_mppe_keys* os_zalloc (int) ;
 int * radius_msg_get_vendor_attr (struct radius_msg*,int ,int ,size_t*) ;
 int wpa_printf (int ,char*) ;

struct radius_ms_mppe_keys *
radius_msg_get_ms_keys(struct radius_msg *msg, struct radius_msg *sent_msg,
         const u8 *secret, size_t secret_len)
{
 u8 *key;
 size_t keylen;
 struct radius_ms_mppe_keys *keys;

 if (msg == ((void*)0) || sent_msg == ((void*)0))
  return ((void*)0);

 keys = os_zalloc(sizeof(*keys));
 if (keys == ((void*)0))
  return ((void*)0);

 key = radius_msg_get_vendor_attr(msg, RADIUS_VENDOR_ID_MICROSOFT,
      RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY,
      &keylen);
 if (key) {
  keys->send = decrypt_ms_key(key, keylen,
         sent_msg->hdr->authenticator,
         secret, secret_len,
         &keys->send_len);
  if (!keys->send) {
   wpa_printf(MSG_DEBUG,
       "RADIUS: Failed to decrypt send key");
  }
  os_free(key);
 }

 key = radius_msg_get_vendor_attr(msg, RADIUS_VENDOR_ID_MICROSOFT,
      RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY,
      &keylen);
 if (key) {
  keys->recv = decrypt_ms_key(key, keylen,
         sent_msg->hdr->authenticator,
         secret, secret_len,
         &keys->recv_len);
  if (!keys->recv) {
   wpa_printf(MSG_DEBUG,
       "RADIUS: Failed to decrypt recv key");
  }
  os_free(key);
 }

 return keys;
}
