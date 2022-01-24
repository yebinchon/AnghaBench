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
struct thread_info {TYPE_1__* private; } ;
struct private_thread_info {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_2__ {int stable; int thrid; int lwpid; int /*<<< orphan*/  mapp; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct thread_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (int thrid, int lwpid, CORE_ADDR mapp, ptid_t ptid)
{
  struct thread_info *newthread;

  if ((newthread = FUNC0 (ptid)) == NULL)
    FUNC1 ("failed to create new thread structure");

  newthread->private = FUNC4 (sizeof (struct private_thread_info));
  newthread->private->stable = 1;
  newthread->private->thrid = thrid;
  newthread->private->lwpid = lwpid;
  newthread->private->mapp = mapp;

  if (target_has_execution)
    FUNC2 ("[New %s]\n", FUNC3 (ptid));
}