
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_3__ svn_branch__state_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int is_flat; TYPE_1__* element_tree; } ;
struct TYPE_5__ {int root_eid; int e_map; } ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_element__tree_purge_orphans (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
branch_state_purge(svn_branch__state_t *branch,
                   apr_pool_t *scratch_pool)
{
  svn_element__tree_purge_orphans(branch->priv->element_tree->e_map,
                                  branch->priv->element_tree->root_eid,
                                  scratch_pool);
  branch->priv->is_flat = TRUE;
  return SVN_NO_ERROR;
}
