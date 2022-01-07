
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_10__ {int e_map; } ;
typedef TYPE_3__ svn_element__tree_t ;
typedef int svn_element__content_t ;
struct TYPE_11__ {TYPE_2__* priv; } ;
typedef TYPE_4__ svn_branch__state_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_9__ {TYPE_1__* element_tree; } ;
struct TYPE_8__ {int e_map; } ;


 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_pool_get (int ) ;
 int * apr_hash_this_val (int *) ;
 int branch_map_set (TYPE_4__*,int,int ) ;
 int svn_eid__hash_this_key (int *) ;
 int svn_element__content_dup (int *,int ) ;

__attribute__((used)) static svn_error_t *
branch_instantiate_elements(svn_branch__state_t *to_branch,
                            const svn_element__tree_t *elements,
                            apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, elements->e_map);
       hi; hi = apr_hash_next(hi))
    {
      int this_eid = svn_eid__hash_this_key(hi);
      svn_element__content_t *this_element = apr_hash_this_val(hi);

      branch_map_set(to_branch, this_eid,
                     svn_element__content_dup(
                       this_element,
                       apr_hash_pool_get(to_branch->priv->element_tree->e_map)));
    }

  return SVN_NO_ERROR;
}
