
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int ra_svn_get_repos_root (int *,char const**,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *path_relative_to_root(svn_ra_session_t *session,
                                          const char **rel_path,
                                          const char *url,
                                          apr_pool_t *pool)
{
  const char *root_url;

  SVN_ERR(ra_svn_get_repos_root(session, &root_url, pool));
  *rel_path = svn_uri_skip_ancestor(root_url, url, pool);
  if (! *rel_path)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("'%s' isn't a child of repository root "
                               "URL '%s'"),
                             url, root_url);
  return SVN_NO_ERROR;
}
