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
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_wc_context_t *wc_ctx,
                  const char *from_abspath,
                  const char *dst_abspath,
                  apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;
  FUNC0(FUNC7(&wcroot_abspath, wc_ctx->db, from_abspath,
                                scratch_pool, scratch_pool));

  if (! FUNC2(from_abspath, wcroot_abspath))
    {
      FUNC0(FUNC6(wc_ctx->db, wcroot_abspath, scratch_pool));

      FUNC0(FUNC5(from_abspath, dst_abspath, FALSE,
                                  scratch_pool));
    }
  else
    return FUNC4(
                    SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                    FUNC1("'%s' is not the root of the working copy '%s'"),
                    FUNC3(from_abspath, scratch_pool),
                    FUNC3(wcroot_abspath, scratch_pool));

  return SVN_NO_ERROR;
}