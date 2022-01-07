
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 scalar_t__ apr_hash_this_key (int *) ;
 scalar_t__ apr_hash_this_val (int *) ;
 char** apr_palloc (int *,int) ;
 char* apr_psprintf (int *,char*,char const*,char const*) ;

__attribute__((used)) static const char **
env_from_env_hash(apr_hash_t *env_hash,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  const char **env;
  const char **envp;

  if (!env_hash)
    return ((void*)0);

  env = apr_palloc(result_pool,
                   sizeof(const char *) * (apr_hash_count(env_hash) + 1));
  envp = env;
  for (hi = apr_hash_first(scratch_pool, env_hash); hi; hi = apr_hash_next(hi))
    {
      *envp = apr_psprintf(result_pool, "%s=%s",
                           (const char *)apr_hash_this_key(hi),
                           (const char *)apr_hash_this_val(hi));
      envp++;
    }
  *envp = ((void*)0);

  return env;
}
