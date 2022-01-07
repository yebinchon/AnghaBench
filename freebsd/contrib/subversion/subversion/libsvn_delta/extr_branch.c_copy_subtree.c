
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_element__tree_t ;
typedef int svn_branch__state_t ;
struct TYPE_6__ {int eid; TYPE_3__* branch; } ;
typedef TYPE_2__ svn_branch__el_rev_id_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int is_flat; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__map_add_subtree (int *,int,int ,char const*,int *,int *) ;
 int svn_branch__state_get_elements (TYPE_3__*,int **,int *) ;
 int * svn_element__tree_get_subtree_at_eid (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
copy_subtree(const svn_branch__el_rev_id_t *from_el_rev,
             svn_branch__state_t *to_branch,
             svn_branch__eid_t to_parent_eid,
             const char *to_name,
             apr_pool_t *scratch_pool)
{
  svn_element__tree_t *new_subtree;

  SVN_ERR_ASSERT(from_el_rev->branch->priv->is_flat);

  SVN_ERR(svn_branch__state_get_elements(from_el_rev->branch, &new_subtree,
                                         scratch_pool));
  new_subtree = svn_element__tree_get_subtree_at_eid(new_subtree,
                                                     from_el_rev->eid,
                                                     scratch_pool);


  SVN_ERR(svn_branch__map_add_subtree(to_branch, -1 ,
                                      to_parent_eid, to_name,
                                      new_subtree,
                                      scratch_pool));

  return SVN_NO_ERROR;
}
