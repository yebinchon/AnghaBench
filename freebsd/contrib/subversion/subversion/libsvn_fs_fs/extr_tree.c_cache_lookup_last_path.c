
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t last_non_empty; TYPE_2__* buckets; } ;
typedef TYPE_1__ fs_fs_dag_cache_t ;
typedef int dag_node_t ;
struct TYPE_5__ {scalar_t__ path_len; int * node; int path; } ;
typedef TYPE_2__ cache_entry_t ;
typedef scalar_t__ apr_size_t ;


 int assert (int) ;
 int memcmp (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static dag_node_t *
cache_lookup_last_path(fs_fs_dag_cache_t *cache,
                       const char *path,
                       apr_size_t path_len)
{
  cache_entry_t *result = &cache->buckets[cache->last_non_empty];
  assert(strlen(path) == path_len);

  if ( result->node
      && (result->path_len == path_len)
      && !memcmp(result->path, path, path_len))
    {
      return result->node;
    }

  return ((void*)0);
}
