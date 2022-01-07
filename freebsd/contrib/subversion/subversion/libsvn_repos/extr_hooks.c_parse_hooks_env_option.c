
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
struct parse_hooks_env_option_baton {char const* section; int * hooks_env; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int TRUE ;
 int * apr_hash_make (int *) ;
 int * apr_hash_pool_get (int *) ;
 int * apr_pstrdup (int *,char const*) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,int *,int *) ;

__attribute__((used)) static svn_boolean_t
parse_hooks_env_option(const char *name, const char *value,
                       void *baton, apr_pool_t *pool)
{
  struct parse_hooks_env_option_baton *bo = baton;
  apr_pool_t *result_pool = apr_hash_pool_get(bo->hooks_env);
  apr_hash_t *hook_env;

  hook_env = svn_hash_gets(bo->hooks_env, bo->section);
  if (hook_env == ((void*)0))
    {
      hook_env = apr_hash_make(result_pool);
      svn_hash_sets(bo->hooks_env, apr_pstrdup(result_pool, bo->section),
                    hook_env);
    }
  svn_hash_sets(hook_env, apr_pstrdup(result_pool, name),
                apr_pstrdup(result_pool, value));

  return TRUE;
}
