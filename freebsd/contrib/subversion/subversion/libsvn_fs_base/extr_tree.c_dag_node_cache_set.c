
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; scalar_t__ is_txn_root; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct dag_node_cache_t {int idx; int * pool; void* node; } ;
typedef int dag_node_t ;
struct TYPE_5__ {int node_cache_idx; char** node_cache_keys; int node_cache; } ;
typedef TYPE_2__ base_root_data_t ;
typedef int apr_pool_t ;


 int NODE_CACHE_MAX_KEYS ;
 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int apr_hash_count (int ) ;
 struct dag_node_cache_t* apr_palloc (int *,int) ;
 char* apr_pstrdup (int *,char const*) ;
 int assert (int) ;
 int memmove (char**,char**,int) ;
 void* svn_fs_base__dag_dup (int *,int *) ;
 struct dag_node_cache_t* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,struct dag_node_cache_t*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int ) ;

__attribute__((used)) static void
dag_node_cache_set(svn_fs_root_t *root,
                   const char *path,
                   dag_node_t *node)
{
  base_root_data_t *brd = root->fsap_data;
  const char *cache_path;
  apr_pool_t *cache_pool;
  struct dag_node_cache_t *cache_item;
  int num_keys = apr_hash_count(brd->node_cache);
  assert(*path == '/');
  assert((brd->node_cache_idx <= num_keys)
         && (num_keys <= NODE_CACHE_MAX_KEYS));


  if (root->is_txn_root)
    return;







  cache_item = svn_hash_gets(brd->node_cache, path);
  if (cache_item)
    {




      SVN_ERR_MALFUNCTION_NO_RETURN();
    }



  if (apr_hash_count(brd->node_cache) == NODE_CACHE_MAX_KEYS)
    {

      cache_path = brd->node_cache_keys[brd->node_cache_idx];
      cache_item = svn_hash_gets(brd->node_cache, cache_path);
      svn_hash_sets(brd->node_cache, cache_path, ((void*)0));
      cache_pool = cache_item->pool;
      svn_pool_clear(cache_pool);
    }
  else
    {
      cache_pool = svn_pool_create(root->pool);
    }


  cache_item = apr_palloc(cache_pool, sizeof(*cache_item));
  cache_item->node = svn_fs_base__dag_dup(node, cache_pool);
  cache_item->idx = brd->node_cache_idx;
  cache_item->pool = cache_pool;


  cache_path = apr_pstrdup(cache_pool, path);
  svn_hash_sets(brd->node_cache, cache_path, cache_item);
  brd->node_cache_keys[brd->node_cache_idx] = cache_path;


  brd->node_cache_idx = (brd->node_cache_idx + 1) % NODE_CACHE_MAX_KEYS;
}
