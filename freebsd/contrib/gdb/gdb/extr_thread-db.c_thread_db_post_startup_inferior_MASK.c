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
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ proc_handle ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (ptid_t ptid)
{
  if (proc_handle.pid == 0)
    {
      /* The child process is now the actual multi-threaded
         program.  Snatch its process ID...  */
      proc_handle.pid = FUNC0 (ptid);

      /* ...and perform the remaining initialization steps.  */
      FUNC1 ();
      FUNC2 ();
    }
}