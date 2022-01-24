#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__dav_props_t ;
typedef  int /*<<< orphan*/  svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/ * stream; int /*<<< orphan*/  prop_diffs; int /*<<< orphan*/  rev_props; int /*<<< orphan*/  file_rev_baton; int /*<<< orphan*/  (* file_rev ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * state_pool; } ;
typedef  TYPE_1__ blame_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int FILE_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int TXDELTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int entered_state,
             const svn_ra_serf__dav_props_t *tag,
             apr_pool_t *scratch_pool)
{
  blame_context_t *blame_ctx = baton;

  if (entered_state == FILE_REV)
    {
      apr_pool_t *state_pool = FUNC8(xes);

      /* Child elements will store properties in these structures.  */
      blame_ctx->rev_props = FUNC2(state_pool);
      blame_ctx->prop_diffs = FUNC1(state_pool,
                                             5, sizeof(svn_prop_t));
      blame_ctx->state_pool = state_pool;

      /* Clear this, so we can detect the absence of a TXDELTA.  */
      blame_ctx->stream = NULL;
    }
  else if (entered_state == TXDELTA)
    {
      apr_pool_t *state_pool = FUNC8(xes);
      apr_hash_t *gathered = FUNC7(xes, FILE_REV);
      const char *path;
      const char *rev_str;
      const char *merged_revision;
      svn_txdelta_window_handler_t txdelta;
      void *txdelta_baton;
      apr_int64_t rev;

      path = FUNC6(gathered, "path");
      rev_str = FUNC6(gathered, "rev");

      FUNC0(FUNC5(&rev, rev_str));
      merged_revision = FUNC6(gathered, "merged-revision");

      FUNC0(blame_ctx->file_rev(blame_ctx->file_rev_baton,
                                  path, (svn_revnum_t)rev,
                                  blame_ctx->rev_props,
                                  merged_revision != NULL,
                                  &txdelta, &txdelta_baton,
                                  blame_ctx->prop_diffs,
                                  state_pool));

      blame_ctx->stream = FUNC4(FUNC9(
                                              txdelta, txdelta_baton,
                                              TRUE /* error_on_early_close */,
                                              state_pool),
                                            state_pool);
    }

  return SVN_NO_ERROR;
}