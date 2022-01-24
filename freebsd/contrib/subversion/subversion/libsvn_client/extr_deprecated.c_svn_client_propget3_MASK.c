#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_14__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ; 
 scalar_t__ SVN_ERR_UNVERSIONED_RESOURCE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*) ; 
 TYPE_1__* FUNC15 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC16(apr_hash_t **props,
                    const char *propname,
                    const char *path_or_url,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *revision,
                    svn_revnum_t *actual_revnum,
                    svn_depth_t depth,
                    const apr_array_header_t *changelists,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  const char *target;
  apr_hash_t *temp_props;
  svn_error_t *err;

  if (FUNC14(path_or_url))
    target = path_or_url;
  else
    FUNC0(FUNC9(&target, path_or_url, pool));

  err = FUNC8(&temp_props, propname, target,
                            peg_revision, revision, actual_revnum,
                            depth, changelists, ctx, pool, pool);

  if (err && err->apr_err == SVN_ERR_UNVERSIONED_RESOURCE)
    {
      err->apr_err = SVN_ERR_ENTRY_NOT_FOUND;
      return FUNC12(err);
    }
  else
    FUNC0(err);

  if (actual_revnum
        && !FUNC14(path_or_url)
        && !FUNC1(*actual_revnum))
    {
      /* Get the actual_revnum; added nodes have no revision yet, and old
       * callers expected the mock-up revision of 0. */
      svn_boolean_t added;

      FUNC0(FUNC15(&added, ctx->wc_ctx, target, pool));
      if (added)
        *actual_revnum = 0;
    }

  /* We may need to fix up our hash keys for legacy callers. */
  if (!FUNC14(path_or_url) && FUNC7(target, path_or_url) != 0)
    {
      apr_hash_index_t *hi;

      *props = FUNC3(pool);
      for (hi = FUNC2(pool, temp_props); hi;
            hi = FUNC4(hi))
        {
          const char *abspath = FUNC5(hi);
          svn_string_t *value = FUNC6(hi);
          const char *relpath = FUNC10(path_or_url,
                                     FUNC11(target, abspath),
                                     pool);

          FUNC13(*props, relpath, value);
        }
    }
  else
    *props = temp_props;

  return SVN_NO_ERROR;
}