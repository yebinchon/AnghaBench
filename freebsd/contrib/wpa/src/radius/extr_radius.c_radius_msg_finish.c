
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {int buf; TYPE_1__* hdr; } ;
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {void* length; } ;


 int MD5_MAC_LEN ;
 int MSG_WARNING ;
 int RADIUS_ATTR_MESSAGE_AUTHENTICATOR ;
 int hmac_md5 (int const*,size_t,int ,int,int *) ;
 void* host_to_be16 (int) ;
 int os_memset (int *,int ,int) ;
 struct radius_attr_hdr* radius_msg_add_attr (struct radius_msg*,int ,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_head (int ) ;
 int wpabuf_len (int ) ;

int radius_msg_finish(struct radius_msg *msg, const u8 *secret,
        size_t secret_len)
{
 if (secret) {
  u8 auth[MD5_MAC_LEN];
  struct radius_attr_hdr *attr;

  os_memset(auth, 0, MD5_MAC_LEN);
  attr = radius_msg_add_attr(msg,
        RADIUS_ATTR_MESSAGE_AUTHENTICATOR,
        auth, MD5_MAC_LEN);
  if (attr == ((void*)0)) {
   wpa_printf(MSG_WARNING, "RADIUS: Could not add "
       "Message-Authenticator");
   return -1;
  }
  msg->hdr->length = host_to_be16(wpabuf_len(msg->buf));
  hmac_md5(secret, secret_len, wpabuf_head(msg->buf),
    wpabuf_len(msg->buf), (u8 *) (attr + 1));
 } else
  msg->hdr->length = host_to_be16(wpabuf_len(msg->buf));

 if (wpabuf_len(msg->buf) > 0xffff) {
  wpa_printf(MSG_WARNING, "RADIUS: Too long message (%lu)",
      (unsigned long) wpabuf_len(msg->buf));
  return -1;
 }
 return 0;
}
