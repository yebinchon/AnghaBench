#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread_info {TYPE_2__* private; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_3__ {int /*<<< orphan*/  ti_lid; } ;
struct TYPE_4__ {TYPE_1__ ti; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread_info*) ; 

__attribute__((used)) static ptid_t
FUNC5 (ptid_t ptid)
{
  struct thread_info *thread_info;
  ptid_t thread_ptid;

  if (!FUNC3 (ptid))
    return ptid;

  thread_info = FUNC2 (ptid);
  FUNC4 (thread_info);

  return FUNC0 (thread_info->private->ti.ti_lid, FUNC1 (ptid));
}