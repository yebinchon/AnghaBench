
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_msg {int buf; } ;


 int os_free (struct eap_sim_msg*) ;
 int wpabuf_free (int ) ;

void eap_sim_msg_free(struct eap_sim_msg *msg)
{
 if (msg) {
  wpabuf_free(msg->buf);
  os_free(msg);
 }
}
