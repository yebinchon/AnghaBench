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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/  revision; int /*<<< orphan*/  stack; } ;
typedef  TYPE_1__ path_tracker_t ;
typedef  int /*<<< orphan*/  path_tracker_entry_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static path_tracker_t *
FUNC2(svn_revnum_t revision,
               apr_pool_t *pool)
{
  path_tracker_t *result = FUNC1(pool, sizeof(*result));
  result->stack = FUNC0(pool, 16, sizeof(path_tracker_entry_t));
  result->revision = revision;
  result->pool = pool;

  return result;
}