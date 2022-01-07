
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CLIENT_UNRELATED_RESOURCES ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int is_same_repos (int const*,int const*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;

__attribute__((used)) static svn_error_t *
check_same_repos(const svn_client__pathrev_t *location1,
                 const char *path1,
                 const svn_client__pathrev_t *location2,
                 const char *path2,
                 svn_boolean_t strict_urls,
                 apr_pool_t *scratch_pool)
{
  if (! is_same_repos(location1, location2, strict_urls))
    return svn_error_createf(SVN_ERR_CLIENT_UNRELATED_RESOURCES, ((void*)0),
                             _("'%s' must be from the same repository as "
                               "'%s'"), path1, path2);
  return SVN_NO_ERROR;
}
