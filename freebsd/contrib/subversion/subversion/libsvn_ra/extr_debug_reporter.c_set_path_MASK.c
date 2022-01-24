#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct report_baton {int /*<<< orphan*/  wrapped_report_baton; TYPE_1__* wrapped_reporter; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_path ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *report_baton,
         const char *path,
         svn_revnum_t revision,
         svn_depth_t depth,
         svn_boolean_t start_empty,
         const char *lock_token,
         apr_pool_t *pool)
{
  struct report_baton *rb = report_baton;
  FUNC1(FUNC4(rb->out, pool, "set_path(%s, %ld, %s, %s, %s)\n",
                            path, revision, FUNC3(depth),
                            FUNC0(start_empty), lock_token));
  FUNC1(rb->wrapped_reporter->set_path(rb->wrapped_report_baton, path,
                                         revision, depth,
                                         start_empty, lock_token, pool));
  return SVN_NO_ERROR;
}