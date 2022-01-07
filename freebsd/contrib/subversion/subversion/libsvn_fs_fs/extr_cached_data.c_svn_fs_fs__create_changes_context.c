
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {int * rev_file_pool; int revision; int * fs; } ;
typedef TYPE_1__ svn_fs_fs__changes_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_error_t *
svn_fs_fs__create_changes_context(svn_fs_fs__changes_context_t **context,
                                  svn_fs_t *fs,
                                  svn_revnum_t rev,
                                  apr_pool_t *result_pool)
{
  svn_fs_fs__changes_context_t *result = apr_pcalloc(result_pool,
                                                     sizeof(*result));
  result->fs = fs;
  result->revision = rev;
  result->rev_file_pool = result_pool;

  *context = result;
  return SVN_NO_ERROR;
}
