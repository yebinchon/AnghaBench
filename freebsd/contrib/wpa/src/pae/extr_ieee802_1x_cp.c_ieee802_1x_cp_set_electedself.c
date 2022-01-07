
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {int elected_self; } ;
typedef int Boolean ;



void ieee802_1x_cp_set_electedself(void *cp_ctx, Boolean status)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;
 sm->elected_self = status;
}
