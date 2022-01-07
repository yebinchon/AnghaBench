
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {TYPE_1__* hdr; } ;
struct radius_ms_mppe_keys {int recv_len; int recv; } ;
struct TYPE_2__ {int authenticator; } ;


 int RADIUS_CISCO_AV_PAIR ;
 int RADIUS_VENDOR_ID_CISCO ;
 int decrypt_ms_key (int *,size_t,int ,int const*,size_t,int *) ;
 int os_free (int *) ;
 scalar_t__ os_memcmp (int *,char*,int) ;
 struct radius_ms_mppe_keys* os_zalloc (int) ;
 int * radius_msg_get_vendor_attr (struct radius_msg*,int ,int ,size_t*) ;

struct radius_ms_mppe_keys *
radius_msg_get_cisco_keys(struct radius_msg *msg, struct radius_msg *sent_msg,
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

 key = radius_msg_get_vendor_attr(msg, RADIUS_VENDOR_ID_CISCO,
      RADIUS_CISCO_AV_PAIR, &keylen);
 if (key && keylen == 51 &&
     os_memcmp(key, "leap:session-key=", 17) == 0) {
  keys->recv = decrypt_ms_key(key + 17, keylen - 17,
         sent_msg->hdr->authenticator,
         secret, secret_len,
         &keys->recv_len);
 }
 os_free(key);

 return keys;
}
