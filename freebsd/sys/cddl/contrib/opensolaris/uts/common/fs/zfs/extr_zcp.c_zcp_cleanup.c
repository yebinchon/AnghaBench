
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zri_cleanup_handlers; } ;
typedef TYPE_1__ zcp_run_info_t ;
struct TYPE_7__ {int zch_cleanup_arg; int (* zch_cleanup_func ) (int ) ;} ;
typedef TYPE_2__ zcp_cleanup_handler_t ;
typedef int lua_State ;


 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* list_remove_head (int *) ;
 int stub1 (int ) ;
 TYPE_1__* zcp_run_info (int *) ;

void
zcp_cleanup(lua_State *state)
{
 zcp_run_info_t *ri = zcp_run_info(state);

 for (zcp_cleanup_handler_t *zch =
     list_remove_head(&ri->zri_cleanup_handlers); zch != ((void*)0);
     zch = list_remove_head(&ri->zri_cleanup_handlers)) {
  zch->zch_cleanup_func(zch->zch_cleanup_arg);
  kmem_free(zch, sizeof (*zch));
 }
}
