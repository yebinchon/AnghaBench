
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int portControl; } ;
typedef int PortControl ;


 int MSG_DEBUG ;
 int eapol_port_control (int ) ;
 int eapol_sm_step (struct eapol_sm*) ;
 int wpa_printf (int ,char*,int ) ;

void eapol_sm_notify_portControl(struct eapol_sm *sm, PortControl portControl)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAPOL: External notification - "
     "portControl=%s", eapol_port_control(portControl));
 sm->portControl = portControl;
 eapol_sm_step(sm);
}
