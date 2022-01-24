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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(char **patch_abspath,
                  const char *name,
                  const char *wc_root_abspath,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  char *dir;
  char *filename;

  FUNC0(FUNC4(&dir, ctx->wc_ctx, wc_root_abspath,
                                  scratch_pool, scratch_pool));
  FUNC0(FUNC2(&filename, name, scratch_pool));
  filename = FUNC1(scratch_pool, filename, ".patch", SVN_VA_NULL);
  *patch_abspath = FUNC3(dir, filename, result_pool);
  return SVN_NO_ERROR;
}