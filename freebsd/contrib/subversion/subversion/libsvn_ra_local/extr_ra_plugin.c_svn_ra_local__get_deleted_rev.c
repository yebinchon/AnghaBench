
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
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_repos_deleted_rev (int ,char const*,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_deleted_rev(svn_ra_session_t *session,
                              const char *path,
                              svn_revnum_t peg_revision,
                              svn_revnum_t end_revision,
                              svn_revnum_t *revision_deleted,
                              apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = svn_fspath__join(sess->fs_path->data, path, pool);

  SVN_ERR(svn_repos_deleted_rev(sess->fs,
                                abs_path,
                                peg_revision,
                                end_revision,
                                revision_deleted,
                                pool));

  return SVN_NO_ERROR;
}
