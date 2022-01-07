
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {int dummy; } ;


 int eloop_cancel_timeout (int ,struct ieee802_1x_cp_sm*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct ieee802_1x_cp_sm*,int *) ;
 int ieee802_1x_cp_step_cb ;

void ieee802_1x_cp_sm_step(void *cp_ctx)
{





 struct ieee802_1x_cp_sm *sm = cp_ctx;
 eloop_cancel_timeout(ieee802_1x_cp_step_cb, sm, ((void*)0));
 eloop_register_timeout(0, 0, ieee802_1x_cp_step_cb, sm, ((void*)0));
}
