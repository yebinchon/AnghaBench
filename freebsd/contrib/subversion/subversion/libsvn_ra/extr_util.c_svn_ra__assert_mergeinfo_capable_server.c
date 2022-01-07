
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_MERGEINFO ;
 int _ (char*) ;
 char* get_path (char const*,int *,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_ra_has_capability (int *,int *,int ,int *) ;

svn_error_t *
svn_ra__assert_mergeinfo_capable_server(svn_ra_session_t *ra_session,
                                        const char *path_or_url,
                                        apr_pool_t *pool)
{
  svn_boolean_t mergeinfo_capable;
  SVN_ERR(svn_ra_has_capability(ra_session, &mergeinfo_capable,
                                SVN_RA_CAPABILITY_MERGEINFO, pool));
  if (! mergeinfo_capable)
    {
      path_or_url = get_path(path_or_url, ra_session, pool);
      return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                               _("Retrieval of mergeinfo unsupported by '%s'"),
                               svn_path_is_url(path_or_url)
                                  ? path_or_url
                                  : svn_dirent_local_style(path_or_url, pool));
    }
  return SVN_NO_ERROR;
}
