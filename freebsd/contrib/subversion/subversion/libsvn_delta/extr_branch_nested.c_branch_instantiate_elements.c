
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int e_map; } ;
typedef TYPE_1__ svn_element__tree_t ;
typedef int svn_element__content_t ;
typedef int svn_branch__state_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_branch__state_set_element (int *,int,int *,int *) ;
 int svn_eid__hash_this_key (int *) ;

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

      SVN_ERR(svn_branch__state_set_element(to_branch, this_eid,
                                            this_element, scratch_pool));
    }

  return SVN_NO_ERROR;
}
