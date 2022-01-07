
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;

svn_error_t *
svn_client__ensure_ra_session_url(const char **old_session_url,
                                  svn_ra_session_t *ra_session,
                                  const char *session_url,
                                  apr_pool_t *pool)
{
  SVN_ERR(svn_ra_get_session_url(ra_session, old_session_url, pool));
  if (! session_url)
    SVN_ERR(svn_ra_get_repos_root2(ra_session, &session_url, pool));
  if (strcmp(*old_session_url, session_url) != 0)
    SVN_ERR(svn_ra_reparent(ra_session, session_url, pool));
  return SVN_NO_ERROR;
}
