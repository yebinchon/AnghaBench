
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (int *) ;
 int svn_hash_sets (int *,char const*,int ) ;
 char* svn_ra_serf__svnname_from_wirename (char const*,char const*,int *) ;
 int svn_string_dup (int const*,int *) ;

svn_error_t *
svn_ra_serf__deliver_svn_props(void *baton,
                               const char *path,
                               const char *ns,
                               const char *name,
                               const svn_string_t *value,
                               apr_pool_t *scratch_pool)
{
  apr_hash_t *props = baton;
  apr_pool_t *result_pool = apr_hash_pool_get(props);
  const char *prop_name;

  prop_name = svn_ra_serf__svnname_from_wirename(ns, name, result_pool);
  if (prop_name == ((void*)0))
    return SVN_NO_ERROR;

  svn_hash_sets(props, prop_name, svn_string_dup(value, result_pool));

  return SVN_NO_ERROR;
}
