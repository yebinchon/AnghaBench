
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int data_key_uniquifier; int data_key; int prop_key; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_7__ {int id; int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_fs_base__same_keys (int ,int ) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_base__things_different(svn_boolean_t *props_changed,
                              svn_boolean_t *contents_changed,
                              dag_node_t *node1,
                              dag_node_t *node2,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  node_revision_t *noderev1, *noderev2;



  if (! props_changed && ! contents_changed)
    return SVN_NO_ERROR;


  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev1, node1->fs, node1->id,
                                        trail, pool));
  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev2, node2->fs, node2->id,
                                        trail, pool));


  if (props_changed != ((void*)0))
    *props_changed = (! svn_fs_base__same_keys(noderev1->prop_key,
                                               noderev2->prop_key));


  if (contents_changed != ((void*)0))
    *contents_changed =
      (! (svn_fs_base__same_keys(noderev1->data_key,
                                 noderev2->data_key)



          && (svn_fs_base__same_keys(noderev1->data_key_uniquifier,
                                     noderev2->data_key_uniquifier))));

  return SVN_NO_ERROR;
}
