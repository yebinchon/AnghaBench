
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_23__ ;
typedef struct TYPE_35__ TYPE_1__ ;


struct TYPE_35__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_session_t ;
typedef int svn_mergeinfo_catalog_t ;
struct TYPE_37__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_38__ {scalar_t__ url; scalar_t__ repos_root_url; scalar_t__ rev; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
struct TYPE_36__ {scalar_t__ url; scalar_t__ repos_root_url; } ;
struct TYPE_39__ {TYPE_23__ loc; int abspath; } ;
typedef TYPE_4__ merge_target_t ;
struct TYPE_40__ {int ancestral; TYPE_3__ const* loc2; TYPE_3__* loc1; } ;
typedef TYPE_5__ merge_source_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING ;
 int SVN_ERR_CLIENT_NOT_READY_TO_MERGE ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int ) ;
 int apr_hash_make (int *) ;
 int assert (int ) ;
 TYPE_2__* calculate_left_hand_side (TYPE_3__**,int *,int *,TYPE_4__ const*,int *,TYPE_3__ const*,int *,int *,int *,int *,int *) ;
 TYPE_2__* find_unsynced_ranges (TYPE_3__ const*,TYPE_23__*,int ,int ,int ,int *,int *,int *) ;
 TYPE_2__* get_wc_explicit_mergeinfo_catalog (int **,int ,int ,int *,int *,int *) ;
 TYPE_5__* merge_source_dup (TYPE_5__*,int *) ;
 int session_url_is (int *,scalar_t__,int *) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 TYPE_2__* svn_client__get_youngest_common_ancestor (TYPE_3__**,TYPE_3__ const*,TYPE_3__*,int *,int *,int *,int *) ;
 TYPE_3__* svn_client__pathrev_dup (TYPE_3__*,int *) ;
 int svn_depth_infinity ;
 TYPE_2__* svn_error_createf (int ,int *,int ,...) ;
 TYPE_2__* svn_error_quick_wrap (TYPE_2__*,int ) ;
 TYPE_2__* svn_mergeinfo__catalog_to_formatted_string (TYPE_1__**,int ,char*,int ,int *) ;
 TYPE_2__* svn_ra_reparent (int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
find_reintegrate_merge(merge_source_t **source_p,
                       svn_client__pathrev_t **yc_ancestor_p,
                       svn_ra_session_t *source_ra_session,
                       const svn_client__pathrev_t *source_loc,
                       svn_ra_session_t *target_ra_session,
                       const merge_target_t *target,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *yc_ancestor;
  svn_client__pathrev_t *loc1;
  merge_source_t source;
  svn_mergeinfo_catalog_t unmerged_to_source_mergeinfo_catalog;
  svn_mergeinfo_catalog_t merged_to_source_mergeinfo_catalog;
  svn_error_t *err;
  apr_hash_t *subtrees_with_mergeinfo;

  assert(session_url_is(source_ra_session, source_loc->url, scratch_pool));
  assert(session_url_is(target_ra_session, target->loc.url, scratch_pool));
  if (strcmp(source_loc->url, source_loc->repos_root_url) == 0
      || strcmp(target->loc.url, target->loc.repos_root_url) == 0)
    return svn_error_createf(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                             _("Neither the reintegrate source nor target "
                               "can be the root of the repository"));


  err = get_wc_explicit_mergeinfo_catalog(&subtrees_with_mergeinfo,
                                          target->abspath, svn_depth_infinity,
                                          ctx, scratch_pool, scratch_pool);


  if (err && err->apr_err == SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING)
    err = svn_error_quick_wrap(err, _("Reintegrate merge not possible"));
  SVN_ERR(err);

  SVN_ERR(calculate_left_hand_side(&loc1,
                                   &merged_to_source_mergeinfo_catalog,
                                   &unmerged_to_source_mergeinfo_catalog,
                                   target,
                                   subtrees_with_mergeinfo,
                                   source_loc,
                                   source_ra_session,
                                   target_ra_session,
                                   ctx,
                                   scratch_pool, scratch_pool));



  if (! loc1)
    {
      if (source_p)
        *source_p = ((void*)0);
      if (yc_ancestor_p)
        *yc_ancestor_p = ((void*)0);
      return SVN_NO_ERROR;
    }

  source.loc1 = loc1;
  source.loc2 = source_loc;




  if (strcmp(source.loc1->url, target->loc.url))
    SVN_ERR(svn_ra_reparent(target_ra_session, source.loc1->url, scratch_pool));

  SVN_ERR(svn_client__get_youngest_common_ancestor(
            &yc_ancestor, source.loc2, source.loc1, target_ra_session,
            ctx, scratch_pool, scratch_pool));

  if (! yc_ancestor)
    return svn_error_createf(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                             _("'%s@%ld' must be ancestrally related to "
                               "'%s@%ld'"),
                             source.loc1->url, source.loc1->rev,
                             source.loc2->url, source.loc2->rev);



  source.ancestral = (loc1->rev == yc_ancestor->rev);

  if (source.loc1->rev > yc_ancestor->rev)
    {



      svn_mergeinfo_catalog_t final_unmerged_catalog = apr_hash_make(scratch_pool);

      SVN_ERR(find_unsynced_ranges(source_loc, &target->loc,
                                   unmerged_to_source_mergeinfo_catalog,
                                   merged_to_source_mergeinfo_catalog,
                                   final_unmerged_catalog,
                                   target_ra_session, scratch_pool,
                                   scratch_pool));

      if (apr_hash_count(final_unmerged_catalog))
        {
          svn_string_t *source_mergeinfo_cat_string;

          SVN_ERR(svn_mergeinfo__catalog_to_formatted_string(
            &source_mergeinfo_cat_string,
            final_unmerged_catalog,
            "  ", _("    Missing ranges: "), scratch_pool));
          return svn_error_createf(SVN_ERR_CLIENT_NOT_READY_TO_MERGE,
                                   ((void*)0),
                                   _("Reintegrate can only be used if "
                                     "revisions %ld through %ld were "
                                     "previously merged from %s to the "
                                     "reintegrate source, but this is "
                                     "not the case:\n%s"),
                                   yc_ancestor->rev + 1, source.loc2->rev,
                                   target->loc.url,
                                   source_mergeinfo_cat_string->data);
        }
    }



  if (source_p)
    *source_p = merge_source_dup(&source, result_pool);

  if (yc_ancestor_p)
    *yc_ancestor_p = svn_client__pathrev_dup(yc_ancestor, result_pool);
  return SVN_NO_ERROR;
}
