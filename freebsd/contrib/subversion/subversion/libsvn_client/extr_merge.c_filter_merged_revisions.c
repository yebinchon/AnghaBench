
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_24__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef int svn_ra_session_t ;
typedef int svn_merge_range_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_25__ {TYPE_1__* remaining_ranges; int implicit_mergeinfo; } ;
typedef TYPE_2__ svn_client__merge_path_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 void* apr_array_make (int *,int ,int) ;
 int ensure_implicit_mergeinfo (TYPE_2__*,TYPE_2__*,int ,scalar_t__,scalar_t__,int *,int *,int *,int *) ;
 int * pool ;
 TYPE_1__* svn_hash_gets (int ,char const*) ;
 TYPE_1__* svn_rangelist__initialize (scalar_t__,scalar_t__,int ,int *) ;
 int svn_rangelist_diff (TYPE_1__**,TYPE_1__**,TYPE_1__*,TYPE_1__*,int ,int *) ;
 void* svn_rangelist_dup (TYPE_1__*,int *) ;
 int svn_rangelist_intersect (TYPE_1__**,TYPE_1__*,TYPE_1__*,int ,int *) ;
 int svn_rangelist_merge2 (TYPE_1__*,TYPE_1__*,int *,int *) ;
 int svn_rangelist_remove (TYPE_1__**,TYPE_1__*,TYPE_1__*,int ,int *) ;
 int svn_rangelist_reverse (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
filter_merged_revisions(svn_client__merge_path_t *parent,
                        svn_client__merge_path_t *child,
                        const char *mergeinfo_path,
                        svn_rangelist_t *target_rangelist,
                        svn_revnum_t revision1,
                        svn_revnum_t revision2,
                        svn_boolean_t child_inherits_implicit,
                        svn_ra_session_t *ra_session,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_rangelist_t *requested_rangelist,
    *target_implicit_rangelist, *explicit_rangelist;
  requested_rangelist = svn_rangelist__initialize(revision1, revision2,
                                                  TRUE, scratch_pool);



  if (revision1 > revision2)
    {
      svn_rangelist_t *added_rangelist, *deleted_rangelist;



      SVN_ERR(svn_rangelist_reverse(requested_rangelist, scratch_pool));



      if (target_rangelist)
        {
          SVN_ERR(svn_rangelist_intersect(&explicit_rangelist,
                                          target_rangelist,
                                          requested_rangelist,
                                          FALSE, scratch_pool));
        }
      else
        {
          explicit_rangelist =
            apr_array_make(result_pool, 0, sizeof(svn_merge_range_t *));
        }



      SVN_ERR(svn_rangelist_diff(&deleted_rangelist, &added_rangelist,
                                 requested_rangelist, explicit_rangelist,
                                 FALSE, scratch_pool));

      if (deleted_rangelist->nelts == 0)
        {



          SVN_ERR(svn_rangelist_reverse(requested_rangelist, scratch_pool));
          child->remaining_ranges = svn_rangelist_dup(requested_rangelist,
                                                      result_pool);
        }
      else
        {
          svn_rangelist_t *implicit_rangelist;

          SVN_ERR(ensure_implicit_mergeinfo(parent,
                                            child,
                                            child_inherits_implicit,
                                            revision1,
                                            revision2,
                                            ra_session,
                                            ctx,
                                            result_pool,
                                            scratch_pool));

          target_implicit_rangelist = svn_hash_gets(child->implicit_mergeinfo,
                                                    mergeinfo_path);

          if (target_implicit_rangelist)
            SVN_ERR(svn_rangelist_intersect(&implicit_rangelist,
                                            target_implicit_rangelist,
                                            requested_rangelist,
                                            FALSE, scratch_pool));
          else
            implicit_rangelist = apr_array_make(scratch_pool, 0,
                                                sizeof(svn_merge_range_t *));

          SVN_ERR(svn_rangelist_merge2(implicit_rangelist,
                                       explicit_rangelist, scratch_pool,
                                       scratch_pool));
          SVN_ERR(svn_rangelist_reverse(implicit_rangelist, scratch_pool));
          child->remaining_ranges = svn_rangelist_dup(implicit_rangelist,
                                                      result_pool);
        }
    }
  else
    {


      if (target_rangelist)
        {


          SVN_ERR(svn_rangelist_remove(&explicit_rangelist,
                                       target_rangelist,
                                       requested_rangelist, FALSE,
                                       scratch_pool));
        }
      else
        {
          explicit_rangelist = svn_rangelist_dup(requested_rangelist,
                                                 scratch_pool);
        }

      if (explicit_rangelist->nelts == 0)
        {
          child->remaining_ranges =
            apr_array_make(result_pool, 0, sizeof(svn_merge_range_t *));
        }
      else
        {



          SVN_ERR(ensure_implicit_mergeinfo(parent,
                                            child,
                                            child_inherits_implicit,
                                            revision1,
                                            revision2,
                                            ra_session,
                                            ctx,
                                            result_pool,
                                            scratch_pool));

          target_implicit_rangelist = svn_hash_gets(child->implicit_mergeinfo,
                                                    mergeinfo_path);
          if (target_implicit_rangelist)
            SVN_ERR(svn_rangelist_remove(&(child->remaining_ranges),
                                         target_implicit_rangelist,
                                         explicit_rangelist,
                                         FALSE, result_pool));
          else
            child->remaining_ranges = svn_rangelist_dup(explicit_rangelist,
                                                        result_pool);
        }

    }

  return SVN_NO_ERROR;
}
