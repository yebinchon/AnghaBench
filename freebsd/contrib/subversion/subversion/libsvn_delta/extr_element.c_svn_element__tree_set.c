
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int e_map; } ;
typedef TYPE_1__ svn_element__tree_t ;
typedef int svn_element__content_t ;


 int * SVN_NO_ERROR ;
 int svn_eid__hash_set (int ,int,int const*) ;

svn_error_t *
svn_element__tree_set(svn_element__tree_t *tree,
                      int eid,
                      const svn_element__content_t *element)
{
  svn_eid__hash_set(tree->e_map, eid, element);

  return SVN_NO_ERROR;
}
