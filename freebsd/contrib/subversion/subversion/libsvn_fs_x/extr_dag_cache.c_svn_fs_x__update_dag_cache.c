
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_9__ {TYPE_2__* dag_node_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_2__ svn_fs_x__dag_cache_t ;
typedef int dag_node_t ;
struct TYPE_11__ {int node; } ;
typedef TYPE_3__ cache_entry_t ;
struct TYPE_13__ {TYPE_1__* fsap_data; } ;
struct TYPE_12__ {int change_set; } ;


 int auto_clear_dag_cache (TYPE_2__*) ;
 TYPE_3__* cache_lookup (TYPE_2__*,int ,int ) ;
 int normalize_path (int *,char const*) ;
 int svn_fs_x__dag_dup (int *,int ) ;
 char* svn_fs_x__dag_get_created_path (int *) ;
 TYPE_5__* svn_fs_x__dag_get_fs (int *) ;
 TYPE_4__* svn_fs_x__dag_get_id (int *) ;

void
svn_fs_x__update_dag_cache(dag_node_t *node)
{
  svn_fs_x__data_t *ffd = svn_fs_x__dag_get_fs(node)->fsap_data;
  const char *path = svn_fs_x__dag_get_created_path(node);
  svn_fs_x__dag_cache_t *cache = ffd->dag_node_cache;

  cache_entry_t *bucket;
  svn_string_t normalized;

  auto_clear_dag_cache(cache);
  bucket = cache_lookup(cache, svn_fs_x__dag_get_id(node)->change_set,
                        normalize_path(&normalized, path));
  bucket->node = svn_fs_x__dag_dup(node, cache->pool);
}
