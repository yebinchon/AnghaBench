
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_msg {int mac; int buf; } ;


 int EAP_SIM_MAC_LEN ;
 int * eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int * wpabuf_head_u8 (int ) ;

u8 * eap_sim_msg_add_mac(struct eap_sim_msg *msg, u8 attr)
{
 u8 *pos = eap_sim_msg_add(msg, attr, 0, ((void*)0), EAP_SIM_MAC_LEN);
 if (pos)
  msg->mac = (pos - wpabuf_head_u8(msg->buf)) + 4;
 return pos;
}
