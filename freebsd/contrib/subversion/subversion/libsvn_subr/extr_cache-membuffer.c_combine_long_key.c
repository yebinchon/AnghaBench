
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int key_len; int * fingerprint; } ;
struct TYPE_7__ {int key_len; int * fingerprint; } ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_1__ entry_key; TYPE_5__ full_key; } ;
struct TYPE_10__ {TYPE_3__ prefix; TYPE_2__ combined_key; } ;
typedef TYPE_4__ svn_membuffer_cache_t ;
typedef int apr_uint32_t ;
typedef scalar_t__ apr_ssize_t ;
typedef int apr_size_t ;


 int ALIGN_VALUE (scalar_t__) ;
 scalar_t__ APR_HASH_KEY_STRING ;
 int memcpy (char*,void const*,scalar_t__) ;
 int memset (char*,int ,int) ;
 scalar_t__ strlen (char const*) ;
 int svn__fnv1a_32x4_raw (int *,void const*,scalar_t__) ;
 int svn_membuf__ensure (TYPE_5__*,int) ;

__attribute__((used)) static void
combine_long_key(svn_membuffer_cache_t *cache,
                 const void *key,
                 apr_ssize_t key_len)
{
  apr_uint32_t *digest_buffer;
  char *key_copy;
  apr_size_t prefix_len = cache->prefix.key_len;
  apr_size_t aligned_key_len;


  if (key_len == APR_HASH_KEY_STRING)
    key_len = strlen((const char *) key);

  aligned_key_len = ALIGN_VALUE(key_len);


  svn_membuf__ensure(&cache->combined_key.full_key,
                     aligned_key_len + prefix_len);

  key_copy = (char *)cache->combined_key.full_key.data + prefix_len;
  cache->combined_key.entry_key.key_len = aligned_key_len + prefix_len;
  memcpy(key_copy, key, key_len);
  memset(key_copy + key_len, 0, aligned_key_len - key_len);


  digest_buffer = (apr_uint32_t *)cache->combined_key.entry_key.fingerprint;
  svn__fnv1a_32x4_raw(digest_buffer, key, key_len);


  cache->combined_key.entry_key.fingerprint[0]
    ^= cache->prefix.fingerprint[0];
  cache->combined_key.entry_key.fingerprint[1]
    ^= cache->prefix.fingerprint[1];
}
