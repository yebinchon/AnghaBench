
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* reps; TYPE_2__* ids; TYPE_1__* noderevs; int * builder; } ;
typedef TYPE_4__ svn_fs_x__noderevs_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_8__ {int nelts; } ;
struct TYPE_7__ {int nelts; } ;
struct TYPE_6__ {int nelts; } ;


 scalar_t__ svn_fs_x__string_table_builder_estimate_size (int *) ;

apr_size_t
svn_fs_x__noderevs_estimate_size(const svn_fs_x__noderevs_t *container)
{

  if (container->builder == ((void*)0))
    return 0;







  return svn_fs_x__string_table_builder_estimate_size(container->builder)
       + container->noderevs->nelts * 16
       + container->ids->nelts * 4
       + container->reps->nelts * 40
       + 100;
}
