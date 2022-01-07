
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int data_rep; int prop_rep; } ;
typedef TYPE_1__ node_revision_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_node_revision (TYPE_1__**,int *) ;
 int * svn_fs_fs__dag_get_fs (int *) ;
 int svn_fs_fs__file_text_rep_equal (int*,int *,TYPE_1__*,TYPE_1__*,int *) ;
 int svn_fs_fs__noderev_same_rep_key (int ,int ) ;
 int svn_fs_fs__prop_rep_equal (int*,int *,TYPE_1__*,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_fs__dag_things_different(svn_boolean_t *props_changed,
                                svn_boolean_t *contents_changed,
                                dag_node_t *node1,
                                dag_node_t *node2,
                                svn_boolean_t strict,
                                apr_pool_t *pool)
{
  node_revision_t *noderev1, *noderev2;



  if (! props_changed && ! contents_changed)
    return SVN_NO_ERROR;


  SVN_ERR(get_node_revision(&noderev1, node1));
  SVN_ERR(get_node_revision(&noderev2, node2));

  if (strict)
    {






      svn_fs_t *fs = svn_fs_fs__dag_get_fs(node1);
      svn_boolean_t same;


      if (props_changed != ((void*)0))
        {
          SVN_ERR(svn_fs_fs__prop_rep_equal(&same, fs, noderev1,
                                            noderev2, pool));
          *props_changed = !same;
        }


      if (contents_changed != ((void*)0))
        {
          SVN_ERR(svn_fs_fs__file_text_rep_equal(&same, fs, noderev1,
                                                 noderev2, pool));
          *contents_changed = !same;
        }
    }
  else
    {



      if (props_changed != ((void*)0))
        *props_changed =
          !svn_fs_fs__noderev_same_rep_key(noderev1->prop_rep,
                                           noderev2->prop_rep);


      if (contents_changed != ((void*)0))
        *contents_changed =
          !svn_fs_fs__noderev_same_rep_key(noderev1->data_rep,
                                           noderev2->data_rep);
    }

  return SVN_NO_ERROR;
}
