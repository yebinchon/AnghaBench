
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_8__ {int ddlrta_txg; TYPE_2__* ddulrta_dd; } ;
typedef TYPE_3__ ddulrt_arg_t ;
struct TYPE_6__ {int dp_spa; } ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dir_update_last_remap_txg_sync ;
 int dsl_sync_task (int ,int *,int ,TYPE_3__*,int,int ) ;
 int spa_name (int ) ;

int
dsl_dir_update_last_remap_txg(dsl_dir_t *dd, uint64_t txg)
{
 ddulrt_arg_t arg;
 arg.ddulrta_dd = dd;
 arg.ddlrta_txg = txg;

 return (dsl_sync_task(spa_name(dd->dd_pool->dp_spa),
     ((void*)0), dsl_dir_update_last_remap_txg_sync, &arg,
     1, ZFS_SPACE_CHECK_RESERVED));
}
