#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXTERNALS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (TYPE_2__ const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(apr_hash_t **externals,
                                     apr_hash_t **depths,
                                     svn_wc_context_t *wc_ctx,
                                     const char *local_abspath,
                                     svn_depth_t depth,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  if (depth == svn_depth_infinity
      || depth == svn_depth_unknown)
    {
      return FUNC5(
        FUNC7(externals, depths,
                                                wc_ctx->db, local_abspath,
                                                result_pool, scratch_pool));
    }
  else
    {
      const svn_string_t *value;
      svn_error_t *err;
      *externals = FUNC1(result_pool);

      local_abspath = FUNC2(result_pool, local_abspath);

      err = FUNC9(&value, wc_ctx, local_abspath,
                             SVN_PROP_EXTERNALS, result_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
            return FUNC5(err);

          FUNC4(err);
          value = NULL;
        }

      if (value)
        FUNC6(*externals, local_abspath, value->data);

      if (value && depths)
        {
          svn_depth_t node_depth;
          *depths = FUNC1(result_pool);

          FUNC0(FUNC8(NULL, NULL, NULL, NULL, NULL, NULL,
                                       NULL, NULL, NULL, &node_depth, NULL,
                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                       NULL, NULL, NULL, NULL,
                                       wc_ctx->db, local_abspath,
                                       scratch_pool, scratch_pool));

          FUNC6(*depths, local_abspath, FUNC3(node_depth));
        }

      return SVN_NO_ERROR;
    }
}