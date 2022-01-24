#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  core_pid; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* to_open ) (char*,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int TD_OK ; 
 int /*<<< orphan*/  core_bfd ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int fbsd_thread_core ; 
 scalar_t__ fbsd_thread_present ; 
 TYPE_3__ orig_core_ops ; 
 TYPE_1__ proc_handle ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (char *filename, int from_tty)
{
  int err;

  fbsd_thread_core = 1;

  orig_core_ops.to_open (filename, from_tty);

  if (fbsd_thread_present)
    {
      err = FUNC4 (&proc_handle, &thread_agent);
      if (err == TD_OK)
        {
          proc_handle.pid = FUNC0 (core_bfd)->core_pid;
          FUNC2 ();
        }
      else
        FUNC1 ("fbsd_core_open: td_ta_new: %s", FUNC5 (err));
    }
}