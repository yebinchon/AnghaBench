
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_10__ {TYPE_1__* node_revision; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int has_mergeinfo; int noderev_id; } ;


 int SVN_ERR_FS_NOT_MUTABLE ;
 int * noderev_changed (TYPE_3__*,int *) ;
 int * svn_error_createf (int ,int *,char*,int ) ;
 int svn_fs_x__dag_check_mutable (TYPE_3__*) ;
 TYPE_2__* svn_fs_x__id_unparse (int *,int *) ;

svn_error_t *
svn_fs_x__dag_set_has_mergeinfo(dag_node_t *node,
                                svn_boolean_t has_mergeinfo,
                                apr_pool_t *scratch_pool)
{

  if (! svn_fs_x__dag_check_mutable(node))
    {
      svn_string_t *idstr
        = svn_fs_x__id_unparse(&node->node_revision->noderev_id,
                               scratch_pool);
      return svn_error_createf
        (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
         "Can't set mergeinfo flag on *immutable* node-revision %s",
         idstr->data);
    }

  node->node_revision->has_mergeinfo = has_mergeinfo;


  return noderev_changed(node, scratch_pool);
}
