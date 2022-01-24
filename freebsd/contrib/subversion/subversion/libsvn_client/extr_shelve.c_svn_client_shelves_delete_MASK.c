#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 TYPE_1__* FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,char*,char const*) ; 

svn_error_t *
FUNC5(const char *name,
                          const char *local_abspath,
                          svn_boolean_t dry_run,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *pool)
{
  const char *wc_root_abspath;

  FUNC1(FUNC3(&wc_root_abspath,
                                 local_abspath, ctx, pool, pool));

  /* Remove the patch. */
  if (! dry_run)
    {
      svn_error_t *err;

      err = FUNC2(name, wc_root_abspath,
                               ctx, pool);
      if (err && FUNC0(err->apr_err))
        {
          return FUNC4(err,
                                       "Shelved change '%s' not found",
                                       name);
        }
      else
        FUNC1(err);
    }

  return SVN_NO_ERROR;
}