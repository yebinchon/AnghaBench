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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_boolean_t *modified_p,
                         svn_wc_context_t* wc_ctx,
                         const char *local_abspath,
                         apr_pool_t *scratch_pool)
{
  return FUNC0(
             FUNC1(modified_p,
                                    wc_ctx->db,
                                    local_abspath,
                                    scratch_pool));
}