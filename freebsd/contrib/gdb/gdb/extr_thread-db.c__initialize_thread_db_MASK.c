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
 int /*<<< orphan*/  target_new_objfile_chain ; 
 int /*<<< orphan*/  target_new_objfile_hook ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  thread_db_new_objfile ; 
 int /*<<< orphan*/  thread_db_ops ; 

void
FUNC3 (void)
{
  /* Only initialize the module if we can load libthread_db.  */
  if (FUNC2 ())
    {
      FUNC1 ();
      FUNC0 (&thread_db_ops);

      /* Add ourselves to objfile event chain.  */
      target_new_objfile_chain = target_new_objfile_hook;
      target_new_objfile_hook = thread_db_new_objfile;
    }
}