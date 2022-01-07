
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {int chgd_server; } ;


 int TRUE ;

void ieee802_1x_cp_signal_chgdserver(void *cp_ctx)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;

 sm->chgd_server = TRUE;
}
