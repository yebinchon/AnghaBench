
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ APR_HASH_KEY_STRING ;
 int apr_hash_set (int *,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;
 int svn_string_ncreate (char const*,scalar_t__,int *) ;

__attribute__((used)) static void
hash_store(apr_hash_t *hash,
           const char *key,
           apr_ssize_t key_len,
           const char *value,
           apr_ssize_t value_len,
           apr_pool_t *pool)
{
  if (! (key && value))
    return;
  if (value_len == APR_HASH_KEY_STRING)
    value_len = strlen(value);
  apr_hash_set(hash, key, key_len,
               svn_string_ncreate(value, value_len, pool));
}
