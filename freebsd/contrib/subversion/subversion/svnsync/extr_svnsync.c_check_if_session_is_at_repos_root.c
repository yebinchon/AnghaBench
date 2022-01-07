
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int APR_EINVAL ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;

__attribute__((used)) static svn_error_t *
check_if_session_is_at_repos_root(svn_ra_session_t *sess,
                                  const char *url,
                                  apr_pool_t *pool)
{
  const char *sess_root;

  SVN_ERR(svn_ra_get_repos_root2(sess, &sess_root, pool));

  if (strcmp(url, sess_root) == 0)
    return SVN_NO_ERROR;
  else
    return svn_error_createf
      (APR_EINVAL, ((void*)0),
       _("Session is rooted at '%s' but the repos root is '%s'"),
       url, sess_root);
}
