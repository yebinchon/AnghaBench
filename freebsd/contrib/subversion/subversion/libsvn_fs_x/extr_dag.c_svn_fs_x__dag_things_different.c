
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data_rep; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_fs_x__dag_get_fs (TYPE_2__*) ;
 int svn_fs_x__file_text_rep_equal (int ,int ) ;
 int svn_fs_x__prop_rep_equal (int*,int *,TYPE_1__*,TYPE_1__*,int,int *) ;

svn_error_t *
svn_fs_x__dag_things_different(svn_boolean_t *props_changed,
                               svn_boolean_t *contents_changed,
                               dag_node_t *node1,
                               dag_node_t *node2,
                               svn_boolean_t strict,
                               apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev1 = node1->node_revision;
  svn_fs_x__noderev_t *noderev2 = node2->node_revision;
  svn_fs_t *fs;
  svn_boolean_t same;



  if (! props_changed && ! contents_changed)
    return SVN_NO_ERROR;

  fs = svn_fs_x__dag_get_fs(node1);


  if (props_changed != ((void*)0))
    {
      SVN_ERR(svn_fs_x__prop_rep_equal(&same, fs, noderev1, noderev2,
                                       strict, scratch_pool));
      *props_changed = !same;
    }


  if (contents_changed != ((void*)0))
    *contents_changed = !svn_fs_x__file_text_rep_equal(noderev1->data_rep,
                                                       noderev2->data_rep);

  return SVN_NO_ERROR;
}
