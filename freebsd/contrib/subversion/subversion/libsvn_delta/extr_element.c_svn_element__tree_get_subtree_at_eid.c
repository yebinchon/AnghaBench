
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int root_eid; int e_map; } ;
typedef TYPE_1__ svn_element__tree_t ;
struct TYPE_10__ {int payload; } ;
typedef TYPE_2__ svn_element__content_t ;
typedef int apr_pool_t ;


 int svn_element__content_create (int,char*,int ,int *) ;
 TYPE_1__* svn_element__tree_create (int ,int,int *) ;
 TYPE_2__* svn_element__tree_get (TYPE_1__*,int ) ;
 int svn_element__tree_purge_orphans (int ,int ,int *) ;
 int svn_element__tree_set (TYPE_1__*,int ,int ) ;

svn_element__tree_t *
svn_element__tree_get_subtree_at_eid(svn_element__tree_t *element_tree,
                                     int eid,
                                     apr_pool_t *result_pool)
{
  svn_element__tree_t *new_subtree;
  svn_element__content_t *subtree_root_element;

  new_subtree = svn_element__tree_create(element_tree->e_map, eid,
                                         result_pool);


  svn_element__tree_purge_orphans(new_subtree->e_map,
                                  new_subtree->root_eid, result_pool);


  subtree_root_element
    = svn_element__tree_get(new_subtree, new_subtree->root_eid);
  svn_element__tree_set(new_subtree, new_subtree->root_eid,
                        svn_element__content_create(
                          -1, "", subtree_root_element->payload, result_pool));

  return new_subtree;
}
