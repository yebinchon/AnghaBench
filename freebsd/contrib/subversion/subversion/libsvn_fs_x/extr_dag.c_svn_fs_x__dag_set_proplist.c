
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_9__ {TYPE_4__* node_revision; int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_10__ {int noderev_id; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int * SVN_NO_ERROR ;
 int * svn_error_createf (int ,int *,char*,int ) ;
 int svn_fs_x__dag_check_mutable (TYPE_2__*) ;
 TYPE_1__* svn_fs_x__id_unparse (int *,int *) ;
 int svn_fs_x__set_proplist (int ,TYPE_4__*,int *,int *) ;
 int svn_fs_x__update_dag_cache (TYPE_2__*) ;

svn_error_t *
svn_fs_x__dag_set_proplist(dag_node_t *node,
                           apr_hash_t *proplist,
                           apr_pool_t *scratch_pool)
{

  if (! svn_fs_x__dag_check_mutable(node))
    {
      svn_string_t *idstr
        = svn_fs_x__id_unparse(&node->node_revision->noderev_id,
                               scratch_pool);
      return svn_error_createf
        (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
         "Can't set proplist on *immutable* node-revision %s",
         idstr->data);
    }


  SVN_ERR(svn_fs_x__set_proplist(node->fs, node->node_revision, proplist,
                                 scratch_pool));
  svn_fs_x__update_dag_cache(node);

  return SVN_NO_ERROR;
}
