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
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ ra_svn_reporter_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC2(void *baton, const char *path,
                                    svn_revnum_t rev,
                                    svn_depth_t depth,
                                    svn_boolean_t start_empty,
                                    const char *lock_token,
                                    apr_pool_t *pool)
{
  ra_svn_reporter_baton_t *b = baton;

  FUNC0(FUNC1(b->conn, pool, path, rev,
                                         start_empty, lock_token, depth));
  return SVN_NO_ERROR;
}