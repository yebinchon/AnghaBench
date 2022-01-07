
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_5__ {int (* list_transactions ) (int **,TYPE_2__*,int *) ;} ;


 int stub1 (int **,TYPE_2__*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_list_transactions(apr_array_header_t **names_p, svn_fs_t *fs,
                         apr_pool_t *pool)
{
  return svn_error_trace(fs->vtable->list_transactions(names_p, fs, pool));
}
