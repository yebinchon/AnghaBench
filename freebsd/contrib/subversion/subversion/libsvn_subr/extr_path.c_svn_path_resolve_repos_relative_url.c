
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_URL ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 char* apr_pstrcat (int *,char const*,char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_path_is_repos_relative_url (char const*) ;

svn_error_t *
svn_path_resolve_repos_relative_url(const char **absolute_url,
                                    const char *relative_url,
                                    const char *repos_root_url,
                                    apr_pool_t *pool)
{
  if (! svn_path_is_repos_relative_url(relative_url))
    return svn_error_createf(SVN_ERR_BAD_URL, ((void*)0),
                             _("Improper relative URL '%s'"),
                             relative_url);





  *absolute_url = apr_pstrcat(pool, repos_root_url, relative_url + 1,
                              SVN_VA_NULL);

  return SVN_NO_ERROR;
}
