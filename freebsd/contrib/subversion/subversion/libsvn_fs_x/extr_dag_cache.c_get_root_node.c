
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* member_0; int member_1; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_13__ {TYPE_9__* dag_node_cache; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
typedef int svn_fs_x__change_set_t ;
struct TYPE_14__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
struct TYPE_15__ {TYPE_3__* fs; } ;
typedef TYPE_4__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
struct TYPE_16__ {int * node; } ;
typedef TYPE_5__ cache_entry_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {int pool; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_clear_dag_cache (TYPE_9__*) ;
 TYPE_5__* cache_lookup (TYPE_9__*,int ,TYPE_1__ const*) ;
 int svn_fs_x__dag_root (int **,TYPE_3__*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_root_node(dag_node_t **node_p,
              svn_fs_root_t *root,
              svn_fs_x__change_set_t change_set,
              apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = root->fs;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  cache_entry_t *bucket;
  const svn_string_t path = { "", 0 };


  auto_clear_dag_cache(ffd->dag_node_cache);
  bucket = cache_lookup(ffd->dag_node_cache, change_set, &path);



  if (bucket->node == ((void*)0))
    SVN_ERR(svn_fs_x__dag_root(&bucket->node, fs, change_set,
                               ffd->dag_node_cache->pool, scratch_pool));


  *node_p = bucket->node;
  return SVN_NO_ERROR;
}
