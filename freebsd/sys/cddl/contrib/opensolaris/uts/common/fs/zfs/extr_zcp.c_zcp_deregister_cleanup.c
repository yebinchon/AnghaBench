
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zri_cleanup_handlers; } ;
typedef TYPE_1__ zcp_run_info_t ;
typedef int zcp_cleanup_handler_t ;
typedef int lua_State ;


 int kmem_free (int *,int) ;
 int list_remove (int *,int *) ;
 TYPE_1__* zcp_run_info (int *) ;

void
zcp_deregister_cleanup(lua_State *state, zcp_cleanup_handler_t *zch)
{
 zcp_run_info_t *ri = zcp_run_info(state);
 list_remove(&ri->zri_cleanup_handlers, zch);
 kmem_free(zch, sizeof (*zch));
}
