
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_hash_t ;


 char* svn_hash_gets (int *,char const*) ;

const char *
svn_hash__get_cstring(apr_hash_t *hash,
                      const char *key,
                      const char *default_value)
{
  if (hash)
    {
      const char *value = svn_hash_gets(hash, key);
      return value ? value : default_value;
    }

  return default_value;
}
