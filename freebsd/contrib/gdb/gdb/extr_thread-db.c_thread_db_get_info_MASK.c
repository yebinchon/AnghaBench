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
typedef  int /*<<< orphan*/  td_thrinfo_t ;
typedef  scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
struct TYPE_2__ {int ti_valid; int /*<<< orphan*/  ti; int /*<<< orphan*/  th; int /*<<< orphan*/  th_valid; } ;

/* Variables and functions */
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_info*,int) ; 

__attribute__((used)) static td_thrinfo_t *
FUNC4 (struct thread_info *thread_info)
{
  td_err_e err;

  if (thread_info->private->ti_valid)
    return &thread_info->private->ti;

  if (!thread_info->private->th_valid)
    FUNC3 (thread_info, 1);

  err =
    FUNC1 (&thread_info->private->th, &thread_info->private->ti);
  if (err != TD_OK)
    FUNC0 ("thread_db_get_info: cannot get thread info: %s",
	   FUNC2 (err));

  thread_info->private->ti_valid = 1;
  return &thread_info->private->ti;
}