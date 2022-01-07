
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_ssize_t ;
typedef int apr_hash_t ;


 scalar_t__ APR_HASH_KEY_STRING ;
 int apr_hash_pool_get (int *) ;
 int apr_hash_set (int *,int ,scalar_t__,void const*) ;
 int apr_pmemdup (int ,void const*,scalar_t__) ;
 scalar_t__ strlen (void const*) ;

__attribute__((used)) static void
hash_set_copy(apr_hash_t *hash,
              const void *key,
              apr_ssize_t klen,
              const void *val)
{
  if (klen == APR_HASH_KEY_STRING)
    klen = strlen(key);
  apr_hash_set(hash, apr_pmemdup(apr_hash_pool_get(hash), key, klen),
               klen, val);
}
