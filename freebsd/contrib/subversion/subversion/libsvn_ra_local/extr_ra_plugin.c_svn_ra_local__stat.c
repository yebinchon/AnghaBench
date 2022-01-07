
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_7__ {int fs; TYPE_1__* fs_path; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_dirent_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int * svn_repos_stat (int **,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__stat(svn_ra_session_t *session,
                   const char *path,
                   svn_revnum_t revision,
                   svn_dirent_t **dirent,
                   apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  svn_fs_root_t *root;
  const char *abs_path = svn_fspath__join(sess->fs_path->data, path, pool);

  if (! SVN_IS_VALID_REVNUM(revision))
    SVN_ERR(svn_fs_youngest_rev(&revision, sess->fs, pool));
  SVN_ERR(svn_fs_revision_root(&root, sess->fs, revision, pool));

  return svn_repos_stat(dirent, root, abs_path, pool);
}
