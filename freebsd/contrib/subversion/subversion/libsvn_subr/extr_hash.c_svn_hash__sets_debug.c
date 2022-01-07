
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_hash_t ;


 int APR_HASH_KEY_STRING ;
 int apr_hash_set (int *,char const*,int ,void const*) ;

void
svn_hash__sets_debug(apr_hash_t *ht, const char *key, const void *val)
{
  apr_hash_set(ht, key, APR_HASH_KEY_STRING, val);
}
