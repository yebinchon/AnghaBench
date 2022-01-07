
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {struct ieee802_1x_cp_sm* oki; struct ieee802_1x_cp_sm* lki; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct ieee802_1x_cp_sm*,int *) ;
 int ieee802_1x_cp_retire_when_timeout ;
 int ieee802_1x_cp_step_cb ;
 int ieee802_1x_cp_transmit_when_timeout ;
 int os_free (struct ieee802_1x_cp_sm*) ;
 int wpa_printf (int ,char*) ;

void ieee802_1x_cp_sm_deinit(struct ieee802_1x_cp_sm *sm)
{
 wpa_printf(MSG_DEBUG, "CP: state machine removed");
 if (!sm)
  return;

 eloop_cancel_timeout(ieee802_1x_cp_retire_when_timeout, sm, ((void*)0));
 eloop_cancel_timeout(ieee802_1x_cp_transmit_when_timeout, sm, ((void*)0));
 eloop_cancel_timeout(ieee802_1x_cp_step_cb, sm, ((void*)0));
 os_free(sm->lki);
 os_free(sm->oki);
 os_free(sm);
}
