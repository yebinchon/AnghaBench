
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_msg {int iv; int encr; int buf; } ;


 int EAP_SIM_IV_LEN ;
 int * eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 scalar_t__ random_get_bytes (int,int ) ;
 int * wpabuf_head_u8 (int ) ;
 int wpabuf_mhead_u8 (int ) ;

int eap_sim_msg_add_encr_start(struct eap_sim_msg *msg, u8 attr_iv,
          u8 attr_encr)
{
 u8 *pos = eap_sim_msg_add(msg, attr_iv, 0, ((void*)0), EAP_SIM_IV_LEN);
 if (pos == ((void*)0))
  return -1;
 msg->iv = (pos - wpabuf_head_u8(msg->buf)) + 4;
 if (random_get_bytes(wpabuf_mhead_u8(msg->buf) + msg->iv,
        EAP_SIM_IV_LEN)) {
  msg->iv = 0;
  return -1;
 }

 pos = eap_sim_msg_add(msg, attr_encr, 0, ((void*)0), 0);
 if (pos == ((void*)0)) {
  msg->iv = 0;
  return -1;
 }
 msg->encr = pos - wpabuf_head_u8(msg->buf);

 return 0;
}
