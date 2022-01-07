
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_6__ {int username; int repos; } ;
typedef TYPE_2__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int get_username (TYPE_1__*,int *) ;
 int * svn_repos_fs_change_rev_prop4 (int ,int ,int ,char const*,int const* const*,int const*,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__change_rev_prop(svn_ra_session_t *session,
                              svn_revnum_t rev,
                              const char *name,
                              const svn_string_t *const *old_value_p,
                              const svn_string_t *value,
                              apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;

  SVN_ERR(get_username(session, pool));
  return svn_repos_fs_change_rev_prop4(sess->repos, rev, sess->username,
                                       name, old_value_p, value, TRUE, TRUE,
                                       ((void*)0), ((void*)0), pool);
}
