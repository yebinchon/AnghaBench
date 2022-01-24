#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_15__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char const*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 char* FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC20 (TYPE_1__*) ; 
 TYPE_1__* FUNC21 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC28(apr_hash_t *externals_new,
                             apr_hash_t *ambient_depths,
                             const char *repos_root_url,
                             const char *target_abspath,
                             svn_depth_t requested_depth,
                             svn_boolean_t *timestamp_sleep,
                             svn_ra_session_t *ra_session,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *scratch_pool)
{
  apr_hash_t *old_external_defs;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  FUNC4(repos_root_url);

  iterpool = FUNC23(scratch_pool);

  FUNC3(FUNC25(&old_external_defs,
                                          ctx->wc_ctx, target_abspath,
                                          scratch_pool, iterpool));

  for (hi = FUNC6(scratch_pool, externals_new);
       hi;
       hi = FUNC8(hi))
    {
      const char *local_abspath = FUNC9(hi);
      const char *desc_text = FUNC11(hi);
      svn_depth_t ambient_depth = svn_depth_infinity;

      FUNC22(iterpool);

      if (ambient_depths)
        {
          const char *ambient_depth_w;

          ambient_depth_w = FUNC7(ambient_depths, local_abspath,
                                         FUNC10(hi));

          if (ambient_depth_w == NULL)
            {
              return FUNC19(
                        SVN_ERR_WC_CORRUPT, NULL,
                        FUNC5("Traversal of '%s' found no ambient depth"),
                        FUNC17(local_abspath, scratch_pool));
            }
          else
            {
              ambient_depth = FUNC15(ambient_depth_w);
            }
        }

      FUNC3(FUNC13(ctx, repos_root_url, timestamp_sleep,
                                      local_abspath,
                                      desc_text, old_external_defs,
                                      ambient_depth, requested_depth,
                                      ra_session, iterpool));
    }

  /* Remove the remaining externals */
  for (hi = FUNC6(scratch_pool, old_external_defs);
       hi;
       hi = FUNC8(hi))
    {
      const char *item_abspath = FUNC9(hi);
      const char *defining_abspath = FUNC11(hi);
      const char *parent_abspath;

      FUNC22(iterpool);

      FUNC3(FUNC27(
                          ctx, item_abspath,
                          FUNC12(ctx, defining_abspath,
                                                       item_abspath, iterpool),
                          iterpool));

      /* Are there any unversioned directories between the removed
       * external and the DEFINING_ABSPATH which we can remove? */
      parent_abspath = item_abspath;
      do {
        svn_node_kind_t kind;

        parent_abspath = FUNC16(parent_abspath, iterpool);
        FUNC3(FUNC26(&kind, ctx->wc_ctx, parent_abspath,
                                  FALSE /* show_deleted*/,
                                  FALSE /* show_hidden */,
                                  iterpool));
        if (kind == svn_node_none)
          {
            svn_error_t *err;

            err = FUNC21(parent_abspath, iterpool);
            if (err)
              {
                if (FUNC2(err->apr_err))
                  {
                    FUNC18(err);
                    break; /* No parents to delete */
                  }
                else if (FUNC0(err->apr_err)
                         || FUNC1(err->apr_err))
                  {
                    FUNC18(err);
                    /* Fall through; parent dir might be unversioned */
                  }
                else
                  return FUNC20(err);
              }
          }
      } while (FUNC14(parent_abspath, defining_abspath) != 0);
    }


  FUNC24(iterpool);
  return SVN_NO_ERROR;
}