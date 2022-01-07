
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {TYPE_7__* tree; int subbranches; } ;
typedef TYPE_1__ svn_branch__subtree_t ;
struct TYPE_10__ {int txn; int bid; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_11__ {int root_eid; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int * branch_instantiate_elements (TYPE_2__*,TYPE_7__*,int *) ;
 char* svn_branch__id_nest (int ,int,int *) ;
 int * svn_branch__txn_open_branch (int ,TYPE_2__**,char const*,int ,int *,int *,int *) ;
 int svn_eid__hash_this_key (int *) ;

svn_error_t *
svn_branch__instantiate_elements_r(svn_branch__state_t *to_branch,
                                   svn_branch__subtree_t elements,
                                   apr_pool_t *scratch_pool)
{
  SVN_ERR(branch_instantiate_elements(to_branch, elements.tree,
                                      scratch_pool));


  {
    apr_hash_index_t *hi;

    for (hi = apr_hash_first(scratch_pool, elements.subbranches);
         hi; hi = apr_hash_next(hi))
      {
        int this_outer_eid = svn_eid__hash_this_key(hi);
        svn_branch__subtree_t *this_subtree = apr_hash_this_val(hi);
        const char *new_branch_id;
        svn_branch__state_t *new_branch;



        new_branch_id = svn_branch__id_nest(to_branch->bid, this_outer_eid,
                                            scratch_pool);
        SVN_ERR(svn_branch__txn_open_branch(to_branch->txn, &new_branch,
                                            new_branch_id,
                                            this_subtree->tree->root_eid,
                                            ((void*)0) ,
                                            scratch_pool, scratch_pool));



        SVN_ERR(svn_branch__instantiate_elements_r(new_branch, *this_subtree,
                                                   scratch_pool));
      }
  }

  return SVN_NO_ERROR;
}
