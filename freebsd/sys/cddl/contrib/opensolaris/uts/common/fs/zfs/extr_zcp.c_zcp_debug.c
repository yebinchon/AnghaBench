
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* zri_tx; } ;
typedef TYPE_2__ zcp_run_info_t ;
struct TYPE_8__ {int kwargs; int pargs; int name; } ;
typedef TYPE_3__ zcp_lib_info_t ;
typedef int lua_State ;
struct TYPE_6__ {int tx_txg; } ;


 char* lua_tostring (int *,int) ;
 TYPE_3__ zcp_debug_info ;
 int zcp_parse_args (int *,int ,int ,int ) ;
 TYPE_2__* zcp_run_info (int *) ;
 int zfs_dbgmsg (char*,int ,char const*) ;

__attribute__((used)) static int
zcp_debug(lua_State *state)
{
 const char *dbgstring;
 zcp_run_info_t *ri = zcp_run_info(state);
 zcp_lib_info_t *libinfo = &zcp_debug_info;

 zcp_parse_args(state, libinfo->name, libinfo->pargs, libinfo->kwargs);

 dbgstring = lua_tostring(state, 1);

 zfs_dbgmsg("txg %lld ZCP: %s", ri->zri_tx->tx_txg, dbgstring);

 return (0);
}
