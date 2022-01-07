
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int pretend_empty; TYPE_3__* cache_internal; int * vtable; } ;
typedef TYPE_2__ svn_cache__t ;
typedef int svn_cache__serialize_func_t ;
typedef int svn_cache__deserialize_func_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int klen; int total_pages; int unallocated_pages; int items_per_page; int * cache_pool; int mutex; TYPE_1__* sentinel; int deserialize_func; int serialize_func; int hash; int id; } ;
typedef TYPE_3__ inprocess_cache_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;


 int APR_HASH_KEY_STRING ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 void* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int getenv (char*) ;
 int inprocess_cache_vtable ;
 int svn_mutex__init (int *,int ,int *) ;

svn_error_t *
svn_cache__create_inprocess(svn_cache__t **cache_p,
                            svn_cache__serialize_func_t serialize,
                            svn_cache__deserialize_func_t deserialize,
                            apr_ssize_t klen,
                            apr_int64_t pages,
                            apr_int64_t items_per_page,
                            svn_boolean_t thread_safe,
                            const char *id,
                            apr_pool_t *pool)
{
  svn_cache__t *wrapper = apr_pcalloc(pool, sizeof(*wrapper));
  inprocess_cache_t *cache = apr_pcalloc(pool, sizeof(*cache));

  cache->id = apr_pstrdup(pool, id);

  SVN_ERR_ASSERT(klen == APR_HASH_KEY_STRING || klen >= 1);

  cache->hash = apr_hash_make(pool);
  cache->klen = klen;

  cache->serialize_func = serialize;
  cache->deserialize_func = deserialize;

  SVN_ERR_ASSERT(pages >= 1);
  cache->total_pages = pages;
  cache->unallocated_pages = pages;
  SVN_ERR_ASSERT(items_per_page >= 1);
  cache->items_per_page = items_per_page;

  cache->sentinel = apr_pcalloc(pool, sizeof(*(cache->sentinel)));
  cache->sentinel->prev = cache->sentinel;
  cache->sentinel->next = cache->sentinel;



  SVN_ERR(svn_mutex__init(&cache->mutex, thread_safe, pool));

  cache->cache_pool = pool;

  wrapper->vtable = &inprocess_cache_vtable;
  wrapper->cache_internal = cache;
  wrapper->pretend_empty = !!getenv("SVN_X_DOES_NOT_MARK_THE_SPOT");

  *cache_p = wrapper;
  return SVN_NO_ERROR;
}
