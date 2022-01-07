
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_8__ {int dag_node_cache; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
typedef int svn_fs_x__change_set_t ;
struct TYPE_9__ {TYPE_1__* fs; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int dag_node_t ;
struct TYPE_10__ {int * node; } ;
struct TYPE_7__ {TYPE_2__* fsap_data; } ;


 int auto_clear_dag_cache (int ) ;
 TYPE_6__* cache_lookup (int ,int ,int const*) ;
 int svn_fs_x__root_change_set (TYPE_3__*) ;

__attribute__((used)) static dag_node_t *
dag_node_cache_get(svn_fs_root_t *root,
                   const svn_string_t *path)
{
  svn_fs_x__data_t *ffd = root->fs->fsap_data;
  svn_fs_x__change_set_t change_set = svn_fs_x__root_change_set(root);

  auto_clear_dag_cache(ffd->dag_node_cache);
  return cache_lookup(ffd->dag_node_cache, change_set, path)->node;
}
