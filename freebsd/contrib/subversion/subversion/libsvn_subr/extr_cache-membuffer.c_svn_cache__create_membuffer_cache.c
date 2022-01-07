
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int prefix_pool; } ;
typedef TYPE_3__ svn_membuffer_t ;
struct TYPE_11__ {char* fingerprint; int key_len; scalar_t__ prefix_idx; } ;
struct TYPE_17__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_1__ entry_key; TYPE_7__ full_key; } ;
struct TYPE_14__ {int key_len; TYPE_2__ combined_key; TYPE_1__ prefix; int mutex; int priority; scalar_t__ deserializer; scalar_t__ serializer; TYPE_3__* membuffer; } ;
typedef TYPE_4__ svn_membuffer_cache_t ;
typedef int svn_error_t ;
struct TYPE_15__ {char const* digest; } ;
typedef TYPE_5__ svn_checksum_t ;
struct TYPE_16__ {int pretend_empty; scalar_t__ error_baton; scalar_t__ error_handler; TYPE_4__* cache_internal; int * vtable; } ;
typedef TYPE_6__ svn_cache__t ;
typedef scalar_t__ svn_cache__serialize_func_t ;
typedef scalar_t__ svn_cache__deserialize_func_t ;
typedef int svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_ssize_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int ALIGN_VALUE (int) ;
 int APR_HASH_KEY_STRING ;
 scalar_t__ NO_INDEX ;
 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int SVN_MAX_OBJECT_SIZE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 void* apr_pcalloc (int *,int) ;
 scalar_t__ deserialize_svn_stringbuf ;
 int getenv (char*) ;
 int membuffer_cache_synced_vtable ;
 int membuffer_cache_vtable ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 int prefix_pool_get (scalar_t__*,int ,char const*) ;
 scalar_t__ serialize_svn_stringbuf ;
 int strlen (char const*) ;
 int svn_checksum (TYPE_5__**,int ,char const*,int,int *) ;
 int svn_checksum_md5 ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_membuf__create (TYPE_7__*,int,int *) ;
 int svn_mutex__init (int *,int ,int *) ;

svn_error_t *
svn_cache__create_membuffer_cache(svn_cache__t **cache_p,
                                  svn_membuffer_t *membuffer,
                                  svn_cache__serialize_func_t serializer,
                                  svn_cache__deserialize_func_t deserializer,
                                  apr_ssize_t klen,
                                  const char *prefix,
                                  apr_uint32_t priority,
                                  svn_boolean_t thread_safe,
                                  svn_boolean_t short_lived,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_checksum_t *checksum;
  apr_size_t prefix_len, prefix_orig_len;



  svn_cache__t *wrapper = apr_pcalloc(result_pool, sizeof(*wrapper));
  svn_membuffer_cache_t *cache = apr_pcalloc(result_pool, sizeof(*cache));



  cache->membuffer = membuffer;
  cache->serializer = serializer
                    ? serializer
                    : serialize_svn_stringbuf;
  cache->deserializer = deserializer
                      ? deserializer
                      : deserialize_svn_stringbuf;
  cache->priority = priority;
  cache->key_len = klen;

  SVN_ERR(svn_mutex__init(&cache->mutex, thread_safe, result_pool));



  prefix_orig_len = strlen(prefix) + 1;
  prefix_len = ALIGN_VALUE(prefix_orig_len);


  if (prefix_orig_len >= SVN_MAX_OBJECT_SIZE)
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                            _("Prefix too long"));


  SVN_ERR(svn_checksum(&checksum,
                       svn_checksum_md5,
                       prefix,
                       strlen(prefix),
                       scratch_pool));
  memcpy(cache->prefix.fingerprint, checksum->digest,
         sizeof(cache->prefix.fingerprint));
  cache->prefix.key_len = prefix_len;



  if ( (klen != APR_HASH_KEY_STRING)
      && (klen <= sizeof(cache->combined_key.entry_key.fingerprint))
      && !short_lived)
    SVN_ERR(prefix_pool_get(&cache->prefix.prefix_idx,
                            membuffer->prefix_pool,
                            prefix));
  else
    cache->prefix.prefix_idx = NO_INDEX;



  if (cache->prefix.prefix_idx == NO_INDEX)
    {


      cache->combined_key.entry_key = cache->prefix;
      svn_membuf__create(&cache->combined_key.full_key, prefix_len + 200,
                         result_pool);
      memcpy((char *)cache->combined_key.full_key.data, prefix,
             prefix_orig_len);
      memset((char *)cache->combined_key.full_key.data + prefix_orig_len, 0,
             prefix_len - prefix_orig_len);
    }
  else
    {




      cache->combined_key.entry_key.prefix_idx = cache->prefix.prefix_idx;
      cache->combined_key.entry_key.key_len = 0;
    }



  wrapper->vtable = thread_safe ? &membuffer_cache_synced_vtable
                                : &membuffer_cache_vtable;
  wrapper->cache_internal = cache;
  wrapper->error_handler = 0;
  wrapper->error_baton = 0;
  wrapper->pretend_empty = !!getenv("SVN_X_DOES_NOT_MARK_THE_SPOT");

  *cache_p = wrapper;
  return SVN_NO_ERROR;
}
