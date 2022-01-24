#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {TYPE_1__* error_info; } ;
typedef  TYPE_2__ bdb_env_baton_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pending_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC3(bdb_env_baton_t *bdb_baton, int db_err)
{
  svn_error_t *child_errors;

  child_errors = bdb_baton->error_info->pending_errors;
  bdb_baton->error_info->pending_errors = NULL;

  return FUNC2(FUNC0(db_err), child_errors,
                          FUNC1(db_err));
}