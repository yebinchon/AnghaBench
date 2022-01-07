
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reverse; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_error_t ;
typedef int svn_diff_hunk_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_or_delete_single_line (int **,char const*,TYPE_1__ const*,int ,int *,int *) ;

svn_error_t *
svn_diff_hunk__create_deletes_single_line(svn_diff_hunk_t **hunk_out,
                                          const char *line,
                                          const svn_patch_t *patch,
                                          apr_pool_t *result_pool,
                                          apr_pool_t *scratch_pool)
{
  SVN_ERR(add_or_delete_single_line(hunk_out, line, patch,
                                    patch->reverse,
                                    result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
