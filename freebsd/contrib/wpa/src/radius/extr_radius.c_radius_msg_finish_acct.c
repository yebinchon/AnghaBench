
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct radius_msg {int buf; TYPE_1__* hdr; } ;
struct TYPE_2__ {int authenticator; int length; } ;


 int MD5_MAC_LEN ;
 int MSG_WARNING ;
 int host_to_be16 (int) ;
 int md5_vector (int,int const**,size_t*,int ) ;
 int os_memset (int ,int ,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;
 int * wpabuf_head (int ) ;
 int wpabuf_len (int ) ;

void radius_msg_finish_acct(struct radius_msg *msg, const u8 *secret,
       size_t secret_len)
{
 const u8 *addr[2];
 size_t len[2];

 msg->hdr->length = host_to_be16(wpabuf_len(msg->buf));
 os_memset(msg->hdr->authenticator, 0, MD5_MAC_LEN);
 addr[0] = wpabuf_head(msg->buf);
 len[0] = wpabuf_len(msg->buf);
 addr[1] = secret;
 len[1] = secret_len;
 md5_vector(2, addr, len, msg->hdr->authenticator);

 if (wpabuf_len(msg->buf) > 0xffff) {
  wpa_printf(MSG_WARNING, "RADIUS: Too long messages (%lu)",
      (unsigned long) wpabuf_len(msg->buf));
 }
}
