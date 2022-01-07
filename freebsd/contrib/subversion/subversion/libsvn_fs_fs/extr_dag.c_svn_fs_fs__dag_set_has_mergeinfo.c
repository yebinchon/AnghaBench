
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_11__ {int id; int has_mergeinfo; } ;
typedef TYPE_2__ node_revision_t ;
struct TYPE_12__ {int fs; int id; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int get_node_revision (TYPE_2__**,TYPE_3__*) ;
 int * svn_error_createf (int ,int *,char*,int ) ;
 int svn_fs_fs__dag_check_mutable (TYPE_3__*) ;
 TYPE_1__* svn_fs_fs__id_unparse (int ,int *) ;
 int * svn_fs_fs__put_node_revision (int ,int ,TYPE_2__*,int ,int *) ;

svn_error_t *
svn_fs_fs__dag_set_has_mergeinfo(dag_node_t *node,
                                 svn_boolean_t has_mergeinfo,
                                 apr_pool_t *pool)
{
  node_revision_t *noderev;


  if (! svn_fs_fs__dag_check_mutable(node))
    {
      svn_string_t *idstr = svn_fs_fs__id_unparse(node->id, pool);
      return svn_error_createf
        (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
         "Can't set mergeinfo flag on *immutable* node-revision %s",
         idstr->data);
    }


  SVN_ERR(get_node_revision(&noderev, node));

  noderev->has_mergeinfo = has_mergeinfo;


  return svn_fs_fs__put_node_revision(node->fs, noderev->id,
                                      noderev, FALSE, pool);
}
