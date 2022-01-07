
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int apr_pool_t ;
typedef int const apr_hash_t ;


 int * apr_hash_make (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 int * svn_hash_gets (int const*,char const*) ;
 int svn_hash_sets (int const*,char const*,int const*) ;
 int * svn_string_dup (int const*,int *) ;

__attribute__((used)) static void
set_ns_prop(apr_hash_t *ns_props,
            const char *ns, const char *name,
            const svn_string_t *val, apr_pool_t *result_pool)
{
  apr_hash_t *props = svn_hash_gets(ns_props, ns);

  if (!props)
    {
      props = apr_hash_make(result_pool);
      ns = apr_pstrdup(result_pool, ns);
      svn_hash_sets(ns_props, ns, props);
    }

  if (val)
    {
      name = apr_pstrdup(result_pool, name);
      val = svn_string_dup(val, result_pool);
    }

  svn_hash_sets(props, name, val);
}
