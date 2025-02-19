
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {int revision_file; int revision; int * fs; } ;
typedef TYPE_1__ svn_fs_x__changes_context_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_fs_x__ensure_revision_exists (int ,int *,int *) ;
 int svn_fs_x__rev_file_init (int *,int *,int ,int *) ;

svn_error_t *
svn_fs_x__create_changes_context(svn_fs_x__changes_context_t **context,
                                 svn_fs_t *fs,
                                 svn_revnum_t rev,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_fs_x__changes_context_t *result = apr_pcalloc(result_pool,
                                                    sizeof(*result));
  result->fs = fs;
  result->revision = rev;

  SVN_ERR(svn_fs_x__ensure_revision_exists(rev, fs, scratch_pool));
  SVN_ERR(svn_fs_x__rev_file_init(&result->revision_file, fs, rev,
                                  result_pool));

  *context = result;
  return SVN_NO_ERROR;
}
