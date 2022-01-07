
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ prefix_idx; int* fingerprint; } ;
struct TYPE_7__ {int* fingerprint; } ;
struct TYPE_8__ {TYPE_1__ entry_key; } ;
struct TYPE_10__ {TYPE_3__ prefix; TYPE_2__ combined_key; } ;
typedef TYPE_4__ svn_membuffer_cache_t ;
typedef int apr_uint64_t ;
typedef int apr_ssize_t ;


 int APR_HASH_KEY_STRING ;
 int APR_UINT64_C (int) ;
 scalar_t__ NO_INDEX ;
 int assert (int) ;
 int combine_long_key (TYPE_4__*,void const*,int) ;
 int memcpy (int*,void const*,int) ;

__attribute__((used)) static void
combine_key(svn_membuffer_cache_t *cache,
            const void *key,
            apr_ssize_t key_len)
{

  apr_uint64_t data[2];


  if (cache->prefix.prefix_idx == NO_INDEX)
    {
      combine_long_key(cache, key, key_len);
      return;
    }


  if (key_len == 16)
    {
      memcpy(data, key, 16);
    }
  else if (key_len == 8)
    {
      memcpy(data, key, 8);
      data[1] = 0;
    }
  else
    {
      assert(key_len != APR_HASH_KEY_STRING && key_len < 16);
      data[0] = 0;
      data[1] = 0;
      memcpy(data, key, key_len);
    }
  data[1] = (data[1] << 27) | (data[1] >> 37);
  data[1] ^= data[0] & 0xffff;
  data[0] ^= data[1] & APR_UINT64_C(0xffffffffffff0000);






  cache->combined_key.entry_key.fingerprint[0]
    = data[0] ^ cache->prefix.fingerprint[0];
  cache->combined_key.entry_key.fingerprint[1]
    = data[1] ^ cache->prefix.fingerprint[1];
}
