#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ svn_rangelist_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_merge_range_t ;
struct TYPE_33__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct TYPE_34__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_NOT_LOCKED ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 char const* FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 (TYPE_2__*) ; 
 char* FUNC17 (char const*,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC18 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_nearest_ancestor ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC27 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC28 (TYPE_1__**,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC29 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC30(svn_mergeinfo_catalog_t result_catalog,
                    const char *target_abspath,
                    const char *source_fspath,
                    apr_hash_t *merges,
                    svn_boolean_t is_rollback,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC24(scratch_pool);
  apr_hash_index_t *hi;

  /* Combine the mergeinfo for the revision range just merged into
     the WC with its on-disk mergeinfo. */
  for (hi = FUNC4(scratch_pool, merges); hi; hi = FUNC6(hi))
    {
      const char *local_abspath = FUNC8(hi);
      svn_rangelist_t *ranges = FUNC9(hi);
      svn_rangelist_t *rangelist;
      svn_error_t *err;
      const char *local_abspath_rel_to_target;
      const char *fspath;
      svn_mergeinfo_t mergeinfo;

      FUNC23(iterpool);

      /* As some of the merges may've changed the WC's mergeinfo, get
         a fresh copy before using it to update the WC's mergeinfo. */
      err = FUNC12(&mergeinfo, ctx->wc_ctx,
                                        local_abspath, iterpool, iterpool);

      /* If a directory PATH was skipped because it is missing or was
         obstructed by an unversioned item then there's nothing we can
         do with that, so skip it. */
      if (err)
        {
          if (err->apr_err == SVN_ERR_WC_NOT_LOCKED
              || err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
            {
              FUNC15(err);
              continue;
            }
          else
            {
              return FUNC16(err);
            }
        }

      /* If we are attempting to set empty revision range override mergeinfo
         on a path with no explicit mergeinfo, we first need the
         mergeinfo that path inherits. */
      if (mergeinfo == NULL && ranges->nelts == 0)
        {
          FUNC0(FUNC11(&mergeinfo, NULL,
                                               svn_mergeinfo_nearest_ancestor,
                                               local_abspath, NULL, NULL,
                                               FALSE, ctx, iterpool, iterpool));
        }

      if (mergeinfo == NULL)
        mergeinfo = FUNC5(iterpool);

      local_abspath_rel_to_target = FUNC14(target_abspath,
                                                             local_abspath);
      FUNC1(local_abspath_rel_to_target != NULL);
      fspath = FUNC17(source_fspath,
                                local_abspath_rel_to_target,
                                iterpool);
      rangelist = FUNC18(mergeinfo, fspath);
      if (rangelist == NULL)
        rangelist = FUNC2(iterpool, 0, sizeof(svn_merge_range_t *));

      if (is_rollback)
        {
          ranges = FUNC26(ranges, iterpool);
          FUNC0(FUNC29(ranges, iterpool));
          FUNC0(FUNC28(&rangelist, ranges, rangelist,
                                       FALSE,
                                       iterpool));
        }
      else
        {
          FUNC0(FUNC27(rangelist, ranges, iterpool, iterpool));
        }
      /* Update the mergeinfo by adjusting the path's rangelist. */
      FUNC19(mergeinfo, fspath, rangelist);

      if (is_rollback && FUNC3(mergeinfo) == 0)
        mergeinfo = NULL;

      FUNC20(mergeinfo, scratch_pool);

      if (result_catalog)
        {
          svn_mergeinfo_t existing_mergeinfo =
            FUNC18(result_catalog, local_abspath);
          apr_pool_t *result_catalog_pool = FUNC7(result_catalog);

          if (existing_mergeinfo)
            FUNC0(FUNC22(mergeinfo, existing_mergeinfo,
                                         result_catalog_pool, scratch_pool));
          FUNC19(result_catalog,
                        FUNC10(result_catalog_pool, local_abspath),
                        FUNC21(mergeinfo, result_catalog_pool));
        }
      else
        {
          err = FUNC13(local_abspath, mergeinfo,
                                                TRUE, ctx, iterpool);

          if (err && err->apr_err == SVN_ERR_ENTRY_NOT_FOUND)
            {
              /* PATH isn't just missing, it's not even versioned as far
                 as this working copy knows.  But it was included in
                 MERGES, which means that the server knows about it.
                 Likely we don't have access to the source due to authz
                 restrictions.  For now just clear the error and
                 continue...

                 ### TODO:  Set non-inheritable mergeinfo on PATH's immediate
                 ### parent and normal mergeinfo on PATH's siblings which we
                 ### do have access to. */
              FUNC15(err);
            }
          else
            FUNC0(err);
        }
    }

  FUNC25(iterpool);
  return SVN_NO_ERROR;
}