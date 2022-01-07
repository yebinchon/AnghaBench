
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_8__ {int fs; int id; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int get_node_revision (int **,TYPE_2__*) ;
 int * svn_error_createf (int ,int *,char*,int ) ;
 int svn_fs_fs__dag_check_mutable (TYPE_2__*) ;
 TYPE_1__* svn_fs_fs__id_unparse (int ,int *) ;
 int * svn_fs_fs__set_proplist (int ,int *,int *,int *) ;

svn_error_t *
svn_fs_fs__dag_set_proplist(dag_node_t *node,
                            apr_hash_t *proplist,
                            apr_pool_t *pool)
{
  node_revision_t *noderev;


  if (! svn_fs_fs__dag_check_mutable(node))
    {
      svn_string_t *idstr = svn_fs_fs__id_unparse(node->id, pool);
      return svn_error_createf
        (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
         "Can't set proplist on *immutable* node-revision %s",
         idstr->data);
    }


  SVN_ERR(get_node_revision(&noderev, node));


  return svn_fs_fs__set_proplist(node->fs, noderev, proplist, pool);
}
