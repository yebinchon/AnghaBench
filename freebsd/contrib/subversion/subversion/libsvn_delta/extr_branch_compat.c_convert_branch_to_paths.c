
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_14__ {int e_map; } ;
typedef TYPE_3__ svn_element__tree_t ;
struct TYPE_15__ {TYPE_1__* payload; } ;
typedef TYPE_4__ svn_element__content_t ;
struct TYPE_16__ {TYPE_2__* txn; } ;
typedef TYPE_5__ svn_branch__state_t ;
typedef int svn_branch__el_rev_id_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_13__ {int rev; } ;
struct TYPE_12__ {scalar_t__ is_subbranch_root; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 TYPE_4__* apr_hash_this_val (int *) ;
 char* branch_get_storage_rrpath_by_eid (TYPE_5__*,int,int *) ;
 int * svn_branch__el_rev_id_create (TYPE_5__*,int,int ,int *) ;
 int svn_branch__state_get_elements (TYPE_5__*,TYPE_3__**,int *) ;
 int svn_eid__hash_this_key (int *) ;
 int svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
convert_branch_to_paths(apr_hash_t *paths,
                        svn_branch__state_t *branch,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_element__tree_t *elements;



  SVN_ERR(svn_branch__state_get_elements(branch, &elements, scratch_pool));
  for (hi = apr_hash_first(scratch_pool, elements->e_map);
       hi; hi = apr_hash_next(hi))
    {
      int eid = svn_eid__hash_this_key(hi);
      svn_element__content_t *element = apr_hash_this_val(hi);
      const char *rrpath
        = branch_get_storage_rrpath_by_eid(branch, eid, result_pool);
      svn_branch__el_rev_id_t *ba;



      if (element->payload->is_subbranch_root)
        continue;



      SVN_ERR_ASSERT(! svn_hash_gets(paths, rrpath));


      ba = svn_branch__el_rev_id_create(branch, eid, branch->txn->rev,
                                        result_pool);
      svn_hash_sets(paths, rrpath, ba);


    }
  return SVN_NO_ERROR;
}
