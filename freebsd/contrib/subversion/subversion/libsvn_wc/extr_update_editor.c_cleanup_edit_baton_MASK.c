#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct edit_baton {int /*<<< orphan*/  wcroot_abspath; int /*<<< orphan*/  db; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t
FUNC3(void *edit_baton)
{
  struct edit_baton *eb = edit_baton;
  svn_error_t *err;
  apr_pool_t *pool = FUNC0(eb->pool);

  err = FUNC2(eb->db, eb->wcroot_abspath,
                       NULL /* cancel_func */, NULL /* cancel_baton */,
                       pool);

  if (err)
    {
      apr_status_t apr_err = err->apr_err;
      FUNC1(err);
      return apr_err;
    }
  return APR_SUCCESS;
}