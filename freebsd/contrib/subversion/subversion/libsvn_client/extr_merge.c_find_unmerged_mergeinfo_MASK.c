#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_catalog_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_19__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ svn_client__pathrev_t ;
struct TYPE_20__ {TYPE_2__ const loc; } ;
typedef  TYPE_3__ merge_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 scalar_t__ SVN_ERR_RA_DAV_REQUEST_FAILED ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 char const* FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (TYPE_2__ const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC17 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_inherited ; 
 scalar_t__ svn_node_none ; 
 char* FUNC25 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 char* FUNC30 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC31 (char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC32(svn_mergeinfo_catalog_t *unmerged_to_source_catalog,
                        svn_revnum_t *youngest_merged_rev,
                        svn_revnum_t yc_ancestor_rev,
                        svn_mergeinfo_catalog_t source_catalog,
                        apr_hash_t *target_history_hash,
                        const svn_client__pathrev_t *source_loc,
                        const merge_target_t *target,
                        svn_ra_session_t *source_ra_session,
                        svn_ra_session_t *target_ra_session,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *source_repos_rel_path
    = FUNC17(source_loc, scratch_pool);
  const char *target_repos_rel_path
    = FUNC17(&target->loc, scratch_pool);
  apr_hash_index_t *hi;
  svn_mergeinfo_catalog_t new_catalog = FUNC4(result_pool);
  apr_pool_t *iterpool = FUNC27(scratch_pool);

  FUNC9(FUNC12(source_ra_session, source_loc->url, scratch_pool));
  FUNC9(FUNC12(target_ra_session, target->loc.url, scratch_pool));

  *youngest_merged_rev = SVN_INVALID_REVNUM;

  /* Examine the natural history of each path in the reintegrate target
     with explicit mergeinfo. */
  for (hi = FUNC3(scratch_pool, target_history_hash);
       hi;
       hi = FUNC5(hi))
    {
      const char *target_path = FUNC6(hi);
      svn_mergeinfo_t target_history_as_mergeinfo = FUNC7(hi);
      const char *path_rel_to_session
        = FUNC31(target_repos_rel_path, target_path);
      const char *source_path;
      svn_client__pathrev_t *source_pathrev;
      svn_mergeinfo_t source_mergeinfo, filtered_mergeinfo;

      FUNC26(iterpool);

      source_path = FUNC30(source_repos_rel_path,
                                     path_rel_to_session, iterpool);
      source_pathrev = FUNC16(
                         source_loc, path_rel_to_session, iterpool);

      /* Remove any target history that is also part of the source's history,
         i.e. their common ancestry.  By definition this has already been
         "merged" from the target to the source.  If the source has explicit
         self referential mergeinfo it would intersect with the target's
         history below, making it appear that some merges had been done from
         the target to the source, when this might not actually be the case. */
      FUNC0(FUNC23(
        &target_history_as_mergeinfo, target_history_as_mergeinfo,
        source_loc->rev, yc_ancestor_rev, TRUE, iterpool, iterpool));

      /* Look for any explicit mergeinfo on the source path corresponding to
         the target path.  If we find any remove that from SOURCE_CATALOG.
         When this iteration over TARGET_HISTORY_HASH is complete all that
         should be left in SOURCE_CATALOG are subtrees that have explicit
         mergeinfo on the reintegrate source where there is no corresponding
         explicit mergeinfo on the reintegrate target. */
      source_mergeinfo = FUNC20(source_catalog, source_path);
      if (source_mergeinfo)
        {
          FUNC21(source_catalog, source_path, NULL);

          FUNC0(FUNC11(youngest_merged_rev,
                                           target_history_as_mergeinfo,
                                           source_mergeinfo,
                                           iterpool));
        }
      else
        {
          /* There is no mergeinfo on source_path *or* source_path doesn't
             exist at all.  If simply doesn't exist we can ignore it
             altogether. */
          svn_node_kind_t kind;

          FUNC0(FUNC29(source_ra_session,
                                    path_rel_to_session,
                                    source_loc->rev, &kind, iterpool));
          if (kind == svn_node_none)
              continue;
          /* Else source_path does exist though it has no explicit mergeinfo.
             Find its inherited mergeinfo.  If it doesn't have any then simply
             set source_mergeinfo to an empty hash. */
          FUNC0(FUNC14(
                    &source_mergeinfo, source_ra_session,
                    source_pathrev->url, source_pathrev->rev,
                    svn_mergeinfo_inherited, FALSE /*squelch_incapable*/,
                    iterpool));
          if (!source_mergeinfo)
            source_mergeinfo = FUNC4(iterpool);
        }

      /* Use scratch_pool rather than iterpool because filtered_mergeinfo
         is going into new_catalog below and needs to last to the end of
         this function. */
      FUNC0(FUNC10(
                &filtered_mergeinfo, target_history_as_mergeinfo,
                source_mergeinfo, source_pathrev,
                source_ra_session, ctx, scratch_pool, iterpool));
      FUNC21(new_catalog, FUNC8(scratch_pool, source_path),
                    filtered_mergeinfo);
    }

  /* Are there any subtrees with explicit mergeinfo still left in the merge
     source where there was no explicit mergeinfo for the corresponding path
     in the merge target?  If so, add the intersection of those path's
     mergeinfo and the corresponding target path's mergeinfo to
     new_catalog. */
  for (hi = FUNC3(scratch_pool, source_catalog);
       hi;
       hi = FUNC5(hi))
    {
      const char *source_path = FUNC6(hi);
      const char *path_rel_to_session =
        FUNC31(source_repos_rel_path, source_path);
      const char *source_url;
      svn_mergeinfo_t source_mergeinfo = FUNC7(hi);
      svn_mergeinfo_t filtered_mergeinfo;
      svn_client__pathrev_t *target_pathrev;
      svn_mergeinfo_t target_history_as_mergeinfo;
      svn_error_t *err;

      FUNC26(iterpool);

      source_url = FUNC25(source_loc->url,
                                               path_rel_to_session, iterpool);
      target_pathrev = FUNC16(
                         &target->loc, path_rel_to_session, iterpool);
      err = FUNC13(&target_history_as_mergeinfo,
                                                 NULL /* has_rev_zero_history */,
                                                 target_pathrev,
                                                 target->loc.rev,
                                                 SVN_INVALID_REVNUM,
                                                 target_ra_session,
                                                 ctx, iterpool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_FS_NOT_FOUND
              || err->apr_err == SVN_ERR_RA_DAV_REQUEST_FAILED)
            {
              /* This path with explicit mergeinfo in the source doesn't
                 exist on the target. */
              FUNC18(err);
              err = NULL;
            }
          else
            {
              return FUNC19(err);
            }
        }
      else
        {
          svn_client__pathrev_t *pathrev;

          FUNC0(FUNC11(youngest_merged_rev,
                                           target_history_as_mergeinfo,
                                           source_mergeinfo,
                                           iterpool));

          /* Use scratch_pool rather than iterpool because filtered_mergeinfo
             is going into new_catalog below and needs to last to the end of
             this function. */
          /* ### Why looking at SOURCE_url at TARGET_rev? */
          FUNC0(FUNC15(
                    &pathrev, source_ra_session, target->loc.rev, source_url,
                    iterpool));
          FUNC0(FUNC10(
                    &filtered_mergeinfo, target_history_as_mergeinfo,
                    source_mergeinfo, pathrev,
                    source_ra_session, ctx, scratch_pool, iterpool));
          if (FUNC2(filtered_mergeinfo))
            FUNC21(new_catalog,
                          FUNC8(scratch_pool, source_path),
                          filtered_mergeinfo);
        }
    }

  /* Limit new_catalog to the youngest revisions previously merged from
     the target to the source. */
  if (FUNC1(*youngest_merged_rev))
    FUNC0(FUNC22(&new_catalog,
                                                    new_catalog,
                                                    *youngest_merged_rev,
                                                    0, /* No oldest bound. */
                                                    TRUE,
                                                    scratch_pool,
                                                    scratch_pool));

  /* Make a shiny new copy before blowing away all the temporary pools. */
  *unmerged_to_source_catalog = FUNC24(new_catalog,
                                                          result_pool);
  FUNC28(iterpool);
  return SVN_NO_ERROR;
}