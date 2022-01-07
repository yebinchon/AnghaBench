
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zri_cleanup_handlers; } ;
typedef TYPE_1__ zcp_run_info_t ;
typedef int zcp_cleanup_t ;
struct TYPE_8__ {void* zch_cleanup_arg; int zch_cleanup_func; } ;
typedef TYPE_2__ zcp_cleanup_handler_t ;
typedef int lua_State ;


 int KM_SLEEP ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int list_insert_head (int *,TYPE_2__*) ;
 TYPE_1__* zcp_run_info (int *) ;

zcp_cleanup_handler_t *
zcp_register_cleanup(lua_State *state, zcp_cleanup_t cleanfunc, void *cleanarg)
{
 zcp_run_info_t *ri = zcp_run_info(state);

 zcp_cleanup_handler_t *zch = kmem_alloc(sizeof (*zch), KM_SLEEP);
 zch->zch_cleanup_func = cleanfunc;
 zch->zch_cleanup_arg = cleanarg;
 list_insert_head(&ri->zri_cleanup_handlers, zch);

 return (zch);
}
