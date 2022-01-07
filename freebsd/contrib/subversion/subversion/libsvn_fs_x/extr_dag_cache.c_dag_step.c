
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_13__ {TYPE_9__* dag_node_cache; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
typedef int svn_fs_x__change_set_t ;
struct TYPE_14__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int dag_node_t ;
struct TYPE_15__ {int * node; } ;
typedef TYPE_4__ cache_entry_t ;
typedef int apr_pool_t ;
struct TYPE_16__ {int pool; } ;


 int SVN_ERR (int ) ;
 int * SVN_FS__NOT_FOUND (int *,char const*) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 scalar_t__ auto_clear_dag_cache (TYPE_9__*) ;
 TYPE_4__* cache_lookup (TYPE_9__*,int ,TYPE_1__ const*) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 TYPE_3__* svn_fs_x__dag_get_fs (int *) ;
 int svn_fs_x__dag_get_node (int **,TYPE_3__*,int *,int ,int *) ;
 int svn_fs_x__dir_entry_id (int *,int *,char const*,int *) ;
 int svn_fs_x__id_used (int *) ;

__attribute__((used)) static svn_error_t *
dag_step(dag_node_t **child_p,
         svn_fs_root_t *root,
         dag_node_t *parent,
         const char *name,
         const svn_string_t *path,
         svn_fs_x__change_set_t change_set,
         svn_boolean_t allow_empty,
         apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = svn_fs_x__dag_get_fs(parent);
  svn_fs_x__data_t *ffd = fs->fsap_data;
  cache_entry_t *bucket;
  svn_fs_x__id_t node_id;



  bucket = cache_lookup(ffd->dag_node_cache, change_set, path);
  if (bucket->node)
    {

      *child_p = bucket->node;
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_fs_x__dir_entry_id(&node_id, parent, name, scratch_pool));
  if (! svn_fs_x__id_used(&node_id))
    {
      const char *dir;


      if (allow_empty)
        {
          *child_p = ((void*)0);
          return SVN_NO_ERROR;
        }


      dir = apr_pstrmemdup(scratch_pool, path->data, path->len);
      dir = svn_fs__canonicalize_abspath(dir, scratch_pool);

      return SVN_FS__NOT_FOUND(root, dir);
    }




  if (auto_clear_dag_cache(ffd->dag_node_cache))
    bucket = cache_lookup(ffd->dag_node_cache, change_set, path);


  SVN_ERR(svn_fs_x__dag_get_node(&bucket->node, fs, &node_id,
                                 ffd->dag_node_cache->pool,
                                 scratch_pool));


  *child_p = bucket->node;
  return SVN_NO_ERROR;
}
