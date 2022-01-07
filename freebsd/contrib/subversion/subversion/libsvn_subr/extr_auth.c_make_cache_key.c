
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char const*,char*,char const*,int ) ;

__attribute__((used)) static const char *
make_cache_key(const char *cred_kind,
               const char *realmstring,
               apr_pool_t *pool)
{
  return apr_pstrcat(pool, cred_kind, ":", realmstring, SVN_VA_NULL);
}
