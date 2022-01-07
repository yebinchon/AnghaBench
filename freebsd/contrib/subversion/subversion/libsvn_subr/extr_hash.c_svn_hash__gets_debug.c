
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_hash_t ;


 int APR_HASH_KEY_STRING ;
 void* apr_hash_get (int *,char const*,int ) ;

void *
svn_hash__gets_debug(apr_hash_t *ht, const char *key)
{
  return apr_hash_get(ht, key, APR_HASH_KEY_STRING);
}
