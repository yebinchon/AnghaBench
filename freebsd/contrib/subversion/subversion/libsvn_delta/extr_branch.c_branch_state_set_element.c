
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_15__ {int parent_eid; char* name; int payload; } ;
typedef TYPE_3__ svn_element__content_t ;
struct TYPE_16__ {TYPE_1__* priv; } ;
typedef TYPE_4__ svn_branch__state_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int root_eid; int e_map; } ;
struct TYPE_13__ {TYPE_2__* element_tree; } ;


 int EID_IS_ALLOCATED (TYPE_4__*,int ) ;
 int IS_BRANCH_ROOT_EID (TYPE_4__*,int ) ;
 int SVN_BRANCH__ERR ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_pool_get (int ) ;
 int branch_map_set (TYPE_4__*,int ,TYPE_3__ const*) ;
 TYPE_3__* svn_element__content_dup (TYPE_3__ const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int,char*,int ) ;

__attribute__((used)) static svn_error_t *
branch_state_set_element(svn_branch__state_t *branch,
                         svn_branch__eid_t eid,
                         const svn_element__content_t *element,
                         apr_pool_t *scratch_pool)
{
  apr_pool_t *map_pool = apr_hash_pool_get(branch->priv->element_tree->e_map);


  SVN_ERR_ASSERT(EID_IS_ALLOCATED(branch, eid));

  if (element)
    {
      element = svn_element__content_dup(element, map_pool);


      SVN_ERR_ASSERT(element->payload);

      if ((element->parent_eid == -1) != IS_BRANCH_ROOT_EID(branch, eid)
          || (*element->name == '\0') != IS_BRANCH_ROOT_EID(branch, eid))
        {
          return svn_error_createf(SVN_BRANCH__ERR, ((void*)0),
                                   _("Cannot set e%d to (parent=e%d, name='%s'): "
                                     "branch root is e%d"),
                                   eid, element->parent_eid, element->name,
                                   branch->priv->element_tree->root_eid);
        }
    }


  branch_map_set(branch, eid, element);
  return SVN_NO_ERROR;
}
