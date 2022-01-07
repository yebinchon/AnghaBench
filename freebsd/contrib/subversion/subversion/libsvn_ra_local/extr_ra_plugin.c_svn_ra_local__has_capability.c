
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_5__ {int repos; } ;
typedef TYPE_2__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNKNOWN_CAPABILITY ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int SVN_RA_CAPABILITY_COMMIT_REVPROPS ;
 int SVN_RA_CAPABILITY_DEPTH ;
 int SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS ;
 int SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE ;
 int SVN_RA_CAPABILITY_INHERITED_PROPS ;
 int SVN_RA_CAPABILITY_LIST ;
 int SVN_RA_CAPABILITY_LOG_REVPROPS ;
 int SVN_RA_CAPABILITY_MERGEINFO ;
 int SVN_RA_CAPABILITY_PARTIAL_REPLAY ;
 int SVN_REPOS_CAPABILITY_MERGEINFO ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_repos_has_capability (int ,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__has_capability(svn_ra_session_t *session,
                             svn_boolean_t *has,
                             const char *capability,
                             apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;

  if (strcmp(capability, SVN_RA_CAPABILITY_DEPTH) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_LOG_REVPROPS) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_PARTIAL_REPLAY) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_COMMIT_REVPROPS) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_ATOMIC_REVPROPS) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_INHERITED_PROPS) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE) == 0
      || strcmp(capability, SVN_RA_CAPABILITY_LIST) == 0
      )
    {
      *has = TRUE;
    }
  else if (strcmp(capability, SVN_RA_CAPABILITY_MERGEINFO) == 0)
    {


      SVN_ERR(svn_repos_has_capability(sess->repos, has,
                                       SVN_REPOS_CAPABILITY_MERGEINFO,
                                       pool));
    }
  else
    {
      return svn_error_createf
        (SVN_ERR_UNKNOWN_CAPABILITY, ((void*)0),
         _("Don't know anything about capability '%s'"), capability);
    }

  return SVN_NO_ERROR;
}
