#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_20__ {TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_22__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_5__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING ; 
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_opt_revision_working ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(apr_hash_t **subtrees_with_mergeinfo,
                                  const char *target_abspath,
                                  svn_depth_t depth,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_opt_revision_t working_revision = { svn_opt_revision_working, 0 };
  apr_pool_t *iterpool = FUNC14(scratch_pool);
  apr_hash_index_t *hi;
  apr_hash_t *externals;

  FUNC0(FUNC6(subtrees_with_mergeinfo, NULL,
                              SVN_PROP_MERGEINFO, target_abspath,
                              &working_revision, &working_revision, NULL,
                              depth, NULL, ctx, result_pool, scratch_pool));

  FUNC0(FUNC16(&externals, ctx->wc_ctx,
                                          target_abspath, scratch_pool,
                                          scratch_pool));

  /* Convert property values to svn_mergeinfo_t. */
  for (hi = FUNC2(scratch_pool, *subtrees_with_mergeinfo);
       hi;
       hi = FUNC3(hi))
    {
      const char *wc_path = FUNC4(hi);
      svn_string_t *mergeinfo_string = FUNC5(hi);
      svn_mergeinfo_t mergeinfo;
      svn_error_t *err;

      /* svn_client_propget5 picks up file externals with
         mergeinfo, but we don't want those. */
      if (FUNC10(externals, wc_path))
        {
          FUNC11(*subtrees_with_mergeinfo, wc_path, NULL);
          continue;
        }

      FUNC13(iterpool);

      err = FUNC12(&mergeinfo, mergeinfo_string->data,
                                result_pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {
              err = FUNC8(
                SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING, err,
                FUNC1("Invalid mergeinfo detected on '%s', "
                  "merge tracking not possible"),
                FUNC7(wc_path, scratch_pool));
            }
          return FUNC9(err);
        }
      FUNC11(*subtrees_with_mergeinfo, wc_path, mergeinfo);
    }
  FUNC15(iterpool);

  return SVN_NO_ERROR;
}