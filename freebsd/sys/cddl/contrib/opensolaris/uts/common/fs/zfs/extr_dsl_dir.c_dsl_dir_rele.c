
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dd_dbuf; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_5__ {int dp_spa; } ;


 int dmu_buf_rele (int ,void*) ;
 int dprintf_dd (TYPE_2__*,char*,char*) ;
 int spa_close (int ,void*) ;

void
dsl_dir_rele(dsl_dir_t *dd, void *tag)
{
 dprintf_dd(dd, "%s\n", "");
 spa_close(dd->dd_pool->dp_spa, tag);
 dmu_buf_rele(dd->dd_dbuf, tag);
}
