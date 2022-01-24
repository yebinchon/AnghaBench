#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int procfs_suppress_run ; 
 int /*<<< orphan*/  target_new_objfile_chain ; 
 int /*<<< orphan*/  target_new_objfile_hook ; 
 int /*<<< orphan*/  uw_thread_new_objfile ; 
 int /*<<< orphan*/  uw_thread_ops ; 

void
FUNC2 (void)
{
  FUNC1 ();
  FUNC0 (&uw_thread_ops);

  procfs_suppress_run = 1;

  /* Notice when libthread.so gets loaded. */
  target_new_objfile_chain = target_new_objfile_hook;
  target_new_objfile_hook = uw_thread_new_objfile;
}