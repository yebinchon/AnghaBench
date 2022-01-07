
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;

 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,char const* const,char const* const) ;
 int svn_repos_has_capability (int *,scalar_t__*,char const* const,int *) ;

svn_error_t *
svn_repos_capabilities(apr_hash_t **capabilities,
                       svn_repos_t *repos,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  static const char *const queries[] = {
    128,
    ((void*)0)
  };
  const char *const *i;

  *capabilities = apr_hash_make(result_pool);

  for (i = queries; *i; i++)
    {
      svn_boolean_t has;
      SVN_ERR(svn_repos_has_capability(repos, &has, *i, scratch_pool));
      if (has)
        svn_hash_sets(*capabilities, *i, *i);
    }

  return SVN_NO_ERROR;
}
