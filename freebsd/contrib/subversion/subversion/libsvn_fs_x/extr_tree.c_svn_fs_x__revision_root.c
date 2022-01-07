
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * make_revision_root (int *,int ,int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_x__ensure_revision_exists (int ,int *,int *) ;

svn_error_t *
svn_fs_x__revision_root(svn_fs_root_t **root_p,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *pool)
{
  SVN_ERR(svn_fs__check_fs(fs, TRUE));
  SVN_ERR(svn_fs_x__ensure_revision_exists(rev, fs, pool));

  *root_p = make_revision_root(fs, rev, pool);

  return SVN_NO_ERROR;
}
