
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_fspath__canonicalize (int ,int *) ;
 int svn_ra_get_path_relative_to_root (int *,char const**,char const*,int *) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 int svn_relpath_join (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_fs_path(const char **fs_path_p,
            svn_ra_session_t *session,
            const char *rel_path,
            apr_pool_t *pool)
{
  const char *url, *fs_path;

  SVN_ERR(svn_ra_get_session_url(session, &url, pool));
  SVN_ERR(svn_ra_get_path_relative_to_root(session, &fs_path, url, pool));
  *fs_path_p = svn_fspath__canonicalize(svn_relpath_join(fs_path,
                                                         rel_path, pool),
                                        pool);
  return SVN_NO_ERROR;
}
