
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_msg {scalar_t__ iv; int encr; int buf; } ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int aes_128_cbc_encrypt (int *,scalar_t__,size_t*,size_t) ;
 int * eap_sim_msg_add (struct eap_sim_msg*,int,int ,int *,int) ;
 int os_memset (int *,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpabuf_head_u8 (int ) ;
 int wpabuf_len (int ) ;
 size_t* wpabuf_mhead_u8 (int ) ;

int eap_sim_msg_add_encr_end(struct eap_sim_msg *msg, u8 *k_encr, int attr_pad)
{
 size_t encr_len;

 if (msg == ((void*)0) || k_encr == ((void*)0) || msg->iv == 0 || msg->encr == 0)
  return -1;

 encr_len = wpabuf_len(msg->buf) - msg->encr - 4;
 if (encr_len % 16) {
  u8 *pos;
  int pad_len = 16 - (encr_len % 16);
  if (pad_len < 4) {
   wpa_printf(MSG_WARNING, "EAP-SIM: "
       "eap_sim_msg_add_encr_end - invalid pad_len"
       " %d", pad_len);
   return -1;
  }
  wpa_printf(MSG_DEBUG, "   *AT_PADDING");
  pos = eap_sim_msg_add(msg, attr_pad, 0, ((void*)0), pad_len - 4);
  if (pos == ((void*)0))
   return -1;
  os_memset(pos + 4, 0, pad_len - 4);
  encr_len += pad_len;
 }
 wpa_printf(MSG_DEBUG, "   (AT_ENCR_DATA data len %lu)",
     (unsigned long) encr_len);
 wpabuf_mhead_u8(msg->buf)[msg->encr + 1] = encr_len / 4 + 1;
 return aes_128_cbc_encrypt(k_encr, wpabuf_head_u8(msg->buf) + msg->iv,
       wpabuf_mhead_u8(msg->buf) + msg->encr + 4,
       encr_len);
}
