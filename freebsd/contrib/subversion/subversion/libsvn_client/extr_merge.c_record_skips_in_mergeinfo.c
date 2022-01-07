
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_wc_notify_state_t ;
typedef int svn_rangelist_t ;
typedef int svn_merge_range_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int ctx; TYPE_1__* target; int skipped_abspaths; } ;
typedef TYPE_2__ merge_cmd_baton_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_5__ {int abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_array_make (int *,int ,int) ;
 scalar_t__ apr_hash_count (int ) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int perform_obstruction_check (scalar_t__*,int *,int *,int *,int *,TYPE_2__*,char const*,int *) ;
 int svn_hash_sets (int *,char const*,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 scalar_t__ svn_wc_notify_state_missing ;
 scalar_t__ svn_wc_notify_state_obstructed ;
 int update_wc_mergeinfo (int *,int ,char const*,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
record_skips_in_mergeinfo(const char *mergeinfo_path,
                          const svn_rangelist_t *rangelist,
                          svn_boolean_t is_rollback,
                          merge_cmd_baton_t *merge_b,
                          apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *merges;
  apr_size_t nbr_skips = apr_hash_count(merge_b->skipped_abspaths);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  if (nbr_skips == 0)
    return SVN_NO_ERROR;

  merges = apr_hash_make(scratch_pool);


  for (hi = apr_hash_first(scratch_pool, merge_b->skipped_abspaths); hi;
       hi = apr_hash_next(hi))
    {
      const char *skipped_abspath = apr_hash_this_key(hi);
      svn_wc_notify_state_t obstruction_state;

      svn_pool_clear(iterpool);



      SVN_ERR(perform_obstruction_check(&obstruction_state, ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0),
                                        merge_b, skipped_abspath,
                                        iterpool));
      if (obstruction_state == svn_wc_notify_state_obstructed
          || obstruction_state == svn_wc_notify_state_missing)
        continue;
      svn_hash_sets(merges, skipped_abspath,
                    apr_array_make(scratch_pool, 0,
                                   sizeof(svn_merge_range_t *)));





    }
  SVN_ERR(update_wc_mergeinfo(((void*)0), merge_b->target->abspath,
                              mergeinfo_path, merges,
                              is_rollback, merge_b->ctx, iterpool));
  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
