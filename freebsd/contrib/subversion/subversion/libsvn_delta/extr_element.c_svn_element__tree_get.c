
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_map; } ;
typedef TYPE_1__ svn_element__tree_t ;
typedef int svn_element__content_t ;


 int * svn_eid__hash_get (int ,int) ;

svn_element__content_t *
svn_element__tree_get(const svn_element__tree_t *tree,
                      int eid)
{
  return svn_eid__hash_get(tree->e_map, eid);
}
