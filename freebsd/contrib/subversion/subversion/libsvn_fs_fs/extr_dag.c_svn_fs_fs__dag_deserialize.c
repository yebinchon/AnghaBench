
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int created_path; int * node_pool; int node_revision; int fresh_root_predecessor_id; int * id; int * fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_fs__id_deserialize (TYPE_1__*,int **) ;
 int svn_fs_fs__noderev_deserialize (TYPE_1__*,int *) ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_fs__dag_deserialize(void **out,
                           void *data,
                           apr_size_t data_len,
                           apr_pool_t *pool)
{
  dag_node_t *node = (dag_node_t *)data;
  if (data_len == 0)
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Empty noderev in cache"));


  node->fs = ((void*)0);


  svn_fs_fs__id_deserialize(node, &node->id);
  svn_fs_fs__id_deserialize(node,
                            (svn_fs_id_t **)&node->fresh_root_predecessor_id);
  svn_fs_fs__noderev_deserialize(node, &node->node_revision);
  node->node_pool = pool;

  svn_temp_deserializer__resolve(node, (void**)&node->created_path);


  *out = node;

  return SVN_NO_ERROR;
}
