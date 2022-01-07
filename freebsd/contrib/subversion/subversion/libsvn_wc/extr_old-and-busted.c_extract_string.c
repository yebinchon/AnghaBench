
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;


 char const* apr_pstrdup (int *,char const*) ;
 char* svn_hash_gets (int *,char const*) ;

__attribute__((used)) static const char *
extract_string(apr_hash_t *atts,
               const char *att_name,
               apr_pool_t *result_pool)
{
  const char *value = svn_hash_gets(atts, att_name);

  if (value == ((void*)0))
    return ((void*)0);

  return apr_pstrdup(result_pool, value);
}
