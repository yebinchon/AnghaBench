#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  void* svn_mergeinfo_t ;
typedef  void* svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_23__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_24__ {scalar_t__ rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_2__ svn_client__pathrev_t ;
struct TYPE_26__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  url; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; } ;
struct TYPE_25__ {char const* abspath; TYPE_5__ loc; } ;
typedef  TYPE_3__ merge_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_NOT_READY_TO_MERGE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**,scalar_t__*,scalar_t__,void*,int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void**,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**,TYPE_2__ const*,TYPE_5__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__**,int /*<<< orphan*/ *,TYPE_5__*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*,void*) ; 
 void* FUNC19 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_inherited ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC24(svn_client__pathrev_t **left_p,
                         svn_mergeinfo_catalog_t *merged_to_source_catalog,
                         svn_mergeinfo_catalog_t *unmerged_to_source_catalog,
                         const merge_target_t *target,
                         apr_hash_t *subtrees_with_mergeinfo,
                         const svn_client__pathrev_t *source_loc,
                         svn_ra_session_t *source_ra_session,
                         svn_ra_session_t *target_ra_session,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_mergeinfo_catalog_t mergeinfo_catalog, unmerged_catalog;
  apr_pool_t *iterpool = FUNC21(scratch_pool);
  apr_hash_index_t *hi;
  /* hash of paths mapped to arrays of svn_mergeinfo_t. */
  apr_hash_t *target_history_hash = FUNC3(scratch_pool);
  svn_revnum_t youngest_merged_rev;
  svn_client__pathrev_t *yc_ancestor;

  FUNC6(FUNC8(source_ra_session, source_loc->url, scratch_pool));
  FUNC6(FUNC8(target_ra_session, target->loc.url, scratch_pool));

  /* Initialize our return variables. */
  *left_p = NULL;

  /* TARGET->abspath may not have explicit mergeinfo and thus may not be
     contained within SUBTREES_WITH_MERGEINFO.  If this is the case then
     add a dummy item for TARGET->abspath so we get its history (i.e. implicit
     mergeinfo) below.  */
  if (!FUNC17(subtrees_with_mergeinfo, target->abspath))
    FUNC18(subtrees_with_mergeinfo, target->abspath,
                  FUNC3(result_pool));

  /* Get the history segments (as mergeinfo) for TARGET->abspath and any of
     its subtrees with explicit mergeinfo. */
  for (hi = FUNC2(scratch_pool, subtrees_with_mergeinfo);
       hi;
       hi = FUNC4(hi))
    {
      const char *local_abspath = FUNC5(hi);
      svn_client__pathrev_t *target_child;
      const char *repos_relpath;
      svn_mergeinfo_t target_history_as_mergeinfo;

      FUNC20(iterpool);

      /* Convert the absolute path with mergeinfo on it to a path relative
         to the session root. */
      FUNC0(FUNC23(NULL, &repos_relpath, NULL, NULL,
                                          ctx->wc_ctx, local_abspath,
                                          scratch_pool, iterpool));
      target_child = FUNC13(
                       target->loc.repos_root_url, target->loc.repos_uuid,
                       target->loc.rev, repos_relpath, iterpool);
      FUNC0(FUNC10(&target_history_as_mergeinfo,
                                                   NULL /* has_rev_zero_hist */,
                                                   target_child,
                                                   target->loc.rev,
                                                   SVN_INVALID_REVNUM,
                                                   target_ra_session,
                                                   ctx, scratch_pool));

      FUNC18(target_history_hash, repos_relpath,
                    target_history_as_mergeinfo);
    }

  /* Check that SOURCE_LOC and TARGET->loc are
     actually related, we can't reintegrate if they are not.  Also
     get an initial value for the YCA revision number. */
  FUNC0(FUNC12(
              &yc_ancestor, source_loc, &target->loc, target_ra_session, ctx,
              iterpool, iterpool));
  if (! yc_ancestor)
    return FUNC16(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, NULL,
                             FUNC1("'%s@%ld' must be ancestrally related to "
                               "'%s@%ld'"), source_loc->url, source_loc->rev,
                             target->loc.url, target->loc.rev);

  /* If the source revision is the same as the youngest common
     revision, then there can't possibly be any unmerged revisions
     that we need to apply to target. */
  if (source_loc->rev == yc_ancestor->rev)
    {
      FUNC22(iterpool);
      return SVN_NO_ERROR;
    }

  /* Get the mergeinfo from the source, including its descendants
     with differing explicit mergeinfo. */
  FUNC0(FUNC11(
            &mergeinfo_catalog, source_ra_session,
            source_loc->url, source_loc->rev,
            svn_mergeinfo_inherited, FALSE /* squelch_incapable */,
            TRUE /* include_descendants */, iterpool, iterpool));

  if (!mergeinfo_catalog)
    mergeinfo_catalog = FUNC3(iterpool);

  *merged_to_source_catalog = FUNC19(mergeinfo_catalog,
                                                        result_pool);

  /* Filter the source's mergeinfo catalog so that we are left with
     mergeinfo that describes what has *not* previously been merged from
     TARGET->loc to SOURCE_LOC. */
  FUNC0(FUNC7(&unmerged_catalog,
                                  &youngest_merged_rev,
                                  yc_ancestor->rev,
                                  mergeinfo_catalog,
                                  target_history_hash,
                                  source_loc,
                                  target,
                                  source_ra_session,
                                  target_ra_session,
                                  ctx,
                                  iterpool, iterpool));

  /* Simplify unmerged_catalog through elision then make a copy in POOL. */
  FUNC0(FUNC9(unmerged_catalog,
                                              iterpool));
  *unmerged_to_source_catalog = FUNC19(unmerged_catalog,
                                                          result_pool);

  if (youngest_merged_rev == SVN_INVALID_REVNUM)
    {
      /* We never merged to the source.  Just return the branch point. */
      *left_p = FUNC14(yc_ancestor, result_pool);
    }
  else
    {
      /* We've previously merged some or all of the target, up to
         youngest_merged_rev, to the source.  Set
         *LEFT_P to cover the youngest part of this range. */
      FUNC0(FUNC15(left_p, target_ra_session,
                                         &target->loc, youngest_merged_rev,
                                         ctx, result_pool, iterpool));
    }

  FUNC22(iterpool);
  return SVN_NO_ERROR;
}