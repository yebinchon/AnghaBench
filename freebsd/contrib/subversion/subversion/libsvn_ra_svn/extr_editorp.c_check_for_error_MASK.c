#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_1__* conn; } ;
typedef  TYPE_2__ ra_svn_edit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {scalar_t__ may_check_for_error; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC1(ra_svn_edit_baton_t *eb, apr_pool_t *pool)
{
  return eb->conn->may_check_for_error
    ? FUNC0(eb, pool)
    : SVN_NO_ERROR;
}