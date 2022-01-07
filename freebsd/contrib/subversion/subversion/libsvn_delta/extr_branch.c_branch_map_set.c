
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_element__content_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int e_map; } ;
struct TYPE_8__ {int is_flat; TYPE_3__* element_tree; } ;


 int EID_IS_ALLOCATED (TYPE_2__*,int) ;
 int FALSE ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int * apr_hash_pool_get (int ) ;
 int assert_branch_state_invariants (TYPE_2__*,int *) ;
 int branch_validate_element (TYPE_2__*,int,int const*) ;
 int svn_element__tree_set (TYPE_3__*,int,int const*) ;

__attribute__((used)) static void
branch_map_set(svn_branch__state_t *branch,
               int eid,
               const svn_element__content_t *element)
{
  apr_pool_t *map_pool = apr_hash_pool_get(branch->priv->element_tree->e_map);

  SVN_ERR_ASSERT_NO_RETURN(EID_IS_ALLOCATED(branch, eid));
  if (element)
    branch_validate_element(branch, eid, element);

  svn_element__tree_set(branch->priv->element_tree, eid, element);
  branch->priv->is_flat = FALSE;
  assert_branch_state_invariants(branch, map_pool);
}
