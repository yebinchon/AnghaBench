
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int * apr_hash_pool_get (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int * svn_string_dup (int const*,int *) ;

__attribute__((used)) static svn_error_t *
deliver_node_props(void *baton,
                  const char *path,
                  const char *ns,
                  const char *name,
                  const svn_string_t *value,
                  apr_pool_t *scratch_pool)
{
  apr_hash_t *nss = baton;
  apr_hash_t *props;
  apr_pool_t *result_pool = apr_hash_pool_get(nss);

  props = svn_hash_gets(nss, ns);

  if (!props)
    {
      props = apr_hash_make(result_pool);

      ns = apr_pstrdup(result_pool, ns);
      svn_hash_sets(nss, ns, props);
    }

  name = apr_pstrdup(result_pool, name);
  svn_hash_sets(props, name, svn_string_dup(value, result_pool));

  return SVN_NO_ERROR;
}
