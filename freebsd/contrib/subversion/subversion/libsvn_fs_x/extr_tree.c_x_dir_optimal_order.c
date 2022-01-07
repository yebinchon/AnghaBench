
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int * svn_fs_x__order_dir_entries (int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
x_dir_optimal_order(apr_array_header_t **ordered_p,
                    svn_fs_root_t *root,
                    apr_hash_t *entries,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  *ordered_p = svn_fs_x__order_dir_entries(root->fs, entries, result_pool,
                                           scratch_pool);

  return SVN_NO_ERROR;
}
