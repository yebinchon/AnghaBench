
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_ki {int dummy; } ;
struct ieee802_1x_cp_sm {int distributed_ki; } ;


 int os_memcpy (int *,struct ieee802_1x_mka_ki const*,int) ;

void ieee802_1x_cp_set_distributedki(void *cp_ctx,
         const struct ieee802_1x_mka_ki *dki)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;
 os_memcpy(&sm->distributed_ki, dki, sizeof(struct ieee802_1x_mka_ki));
}
