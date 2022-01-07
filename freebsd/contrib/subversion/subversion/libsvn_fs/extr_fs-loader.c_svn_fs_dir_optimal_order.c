
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_5__ {int (* dir_optimal_order ) (int **,TYPE_2__*,int *,int *,int *) ;} ;


 int stub1 (int **,TYPE_2__*,int *,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_dir_optimal_order(apr_array_header_t **ordered_p,
                         svn_fs_root_t *root,
                         apr_hash_t *entries,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  return svn_error_trace(root->vtable->dir_optimal_order(ordered_p, root,
                                                         entries,
                                                         result_pool,
                                                         scratch_pool));
}
