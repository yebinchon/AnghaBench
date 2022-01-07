
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int last_hit; int insertions; int pool; TYPE_2__* buckets; } ;
typedef TYPE_1__ fs_fs_dag_cache_t ;
typedef int dag_node_t ;
struct TYPE_6__ {int hash_value; int path_len; int node; int path; int revision; } ;
typedef TYPE_2__ cache_entry_t ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;


 int BUCKET_COUNT ;
 int apr_palloc (int ,int) ;
 int auto_clear_dag_cache (TYPE_1__*) ;
 int hash_func (int ,char const*,int) ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;
 int svn_fs_fs__dag_dup (int *,int ) ;

__attribute__((used)) static void
cache_insert(fs_fs_dag_cache_t *cache,
             svn_revnum_t revision,
             const char *path,
             dag_node_t *node)
{
  apr_size_t bucket_index;
  apr_size_t path_len = strlen(path);
  apr_uint32_t hash_value;
  cache_entry_t *entry;

  auto_clear_dag_cache(cache);


  hash_value = hash_func(revision, path, path_len);

  bucket_index = hash_value + (hash_value >> 16);
  bucket_index = (bucket_index + (bucket_index >> 8)) % BUCKET_COUNT;


  entry = &cache->buckets[bucket_index];
  cache->last_hit = bucket_index;



  entry->hash_value = hash_value;
  entry->revision = revision;
  if (entry->path_len < path_len)
    entry->path = apr_palloc(cache->pool, path_len + 1);
  entry->path_len = path_len;
  memcpy(entry->path, path, path_len + 1);

  entry->node = svn_fs_fs__dag_dup(node, cache->pool);
  cache->insertions++;
}
