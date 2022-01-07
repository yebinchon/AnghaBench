
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_1x_cp_sm {int distributed_an; } ;



void ieee802_1x_cp_set_distributedan(void *cp_ctx, u8 an)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;
 sm->distributed_an = an;
}
