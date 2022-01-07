
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_txn_root; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct dag_node_cache_t {int node; } ;
typedef int dag_node_t ;
struct TYPE_5__ {int node_cache; } ;
typedef TYPE_2__ base_root_data_t ;
typedef int apr_pool_t ;


 int assert (int) ;
 int * svn_fs_base__dag_dup (int ,int *) ;
 struct dag_node_cache_t* svn_hash_gets (int ,char const*) ;

__attribute__((used)) static dag_node_t *
dag_node_cache_get(svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  base_root_data_t *brd = root->fsap_data;
  struct dag_node_cache_t *cache_item;


  assert(*path == '/');


  if (root->is_txn_root)
    return ((void*)0);


  cache_item = svn_hash_gets(brd->node_cache, path);
  if (cache_item)
    return svn_fs_base__dag_dup(cache_item->node, pool);

  return ((void*)0);
}
