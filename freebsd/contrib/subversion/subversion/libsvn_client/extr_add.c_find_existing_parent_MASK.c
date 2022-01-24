#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/ * (* cancel_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_NO_VERSIONED_PARENT ; 
 int /*<<< orphan*/  SVN_ERR_RESERVED_FILENAME_SPECIFIED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(const char **existing_parent_abspath,
                     svn_client_ctx_t *ctx,
                     const char *local_abspath,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *parent_abspath;
  svn_wc_context_t *wc_ctx = ctx->wc_ctx;

  FUNC0(FUNC12(&kind, wc_ctx, local_abspath,
                            FALSE, FALSE, scratch_pool));

  if (kind == svn_node_dir)
    {
      *existing_parent_abspath = FUNC2(result_pool, local_abspath);
      return SVN_NO_ERROR;
    }

  if (FUNC7(local_abspath, FUNC3(local_abspath)))
    return FUNC9(SVN_ERR_CLIENT_NO_VERSIONED_PARENT, NULL, NULL);

  if (FUNC11(FUNC5(local_abspath, scratch_pool),
                        scratch_pool))
    return FUNC10(SVN_ERR_RESERVED_FILENAME_SPECIFIED, NULL,
                             FUNC1("'%s' ends in a reserved name"),
                             FUNC8(local_abspath,
                                                    scratch_pool));

  parent_abspath = FUNC6(local_abspath, scratch_pool);

  if (ctx->cancel_func)
    FUNC0(ctx->cancel_func(ctx->cancel_baton));

  FUNC0(FUNC13(existing_parent_abspath, ctx, parent_abspath,
                               result_pool, scratch_pool));

  return SVN_NO_ERROR;
}