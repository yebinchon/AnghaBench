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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  conn; int /*<<< orphan*/  edit_baton; int /*<<< orphan*/  editor; int /*<<< orphan*/  sess_baton; } ;
typedef  TYPE_1__ ra_svn_reporter_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC5(void *baton,
                                         apr_pool_t *pool)
{
  ra_svn_reporter_baton_t *b = baton;

  FUNC0(FUNC3(b->conn, b->pool));
  FUNC0(FUNC1(b->sess_baton, b->pool));
  FUNC0(FUNC4(b->conn, b->pool, b->editor, b->edit_baton,
                                   NULL, FALSE));
  FUNC0(FUNC2(b->conn, b->pool, ""));
  return SVN_NO_ERROR;
}