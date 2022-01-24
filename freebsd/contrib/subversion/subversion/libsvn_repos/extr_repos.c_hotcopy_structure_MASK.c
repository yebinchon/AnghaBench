#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct hotcopy_ctx_t {int src_len; scalar_t__ incremental; int /*<<< orphan*/  dest; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {scalar_t__ filetype; } ;
typedef  TYPE_2__ apr_finfo_t ;

/* Variables and functions */
 scalar_t__ APR_DIR ; 
 scalar_t__ APR_LNK ; 
 scalar_t__ APR_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_DIR_NOT_EMPTY ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__DB_DIR ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT ; 
 int /*<<< orphan*/  SVN_REPOS__LOCK_DIR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC11(void *baton,
                                      const char *path,
                                      const apr_finfo_t *finfo,
                                      apr_pool_t *pool)
{
  const struct hotcopy_ctx_t *ctx = baton;
  const char *sub_path;
  const char *target;

  if (ctx->cancel_func)
    FUNC0(ctx->cancel_func(ctx->cancel_baton));

  if (FUNC2(path) == ctx->src_len)
    {
      sub_path = "";
    }
  else
    {
      sub_path = &path[ctx->src_len+1];

      /* Check if we are inside db directory and if so skip it */
      if (FUNC10
          (FUNC4(SVN_REPOS__DB_DIR, sub_path, pool),
           SVN_REPOS__DB_DIR) == 0)
        return SVN_NO_ERROR;

      if (FUNC10
          (FUNC4(SVN_REPOS__LOCK_DIR, sub_path,
                                           pool),
           SVN_REPOS__LOCK_DIR) == 0)
        return SVN_NO_ERROR;

      if (FUNC10
          (FUNC4(SVN_REPOS__FORMAT, sub_path, pool),
           SVN_REPOS__FORMAT) == 0)
        return SVN_NO_ERROR;
    }

  target = FUNC5(ctx->dest, sub_path, pool);

  if (finfo->filetype == APR_DIR)
    {
      svn_error_t *err;

      err = FUNC1(target, pool);
      if (ctx->incremental && err && err->apr_err == SVN_ERR_DIR_NOT_EMPTY)
        {
          FUNC6(err);
          err = SVN_NO_ERROR;
        }
      return FUNC7(err);
    }
  else if (finfo->filetype == APR_REG)
    return FUNC8(path, target, TRUE, pool);
  else if (finfo->filetype == APR_LNK)
    return FUNC9(path, target, pool);
  else
    return SVN_NO_ERROR;
}