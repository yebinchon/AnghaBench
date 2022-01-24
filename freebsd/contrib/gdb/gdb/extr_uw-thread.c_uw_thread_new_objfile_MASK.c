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
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct objfile*) ; 
 scalar_t__ uw_thread_active ; 

__attribute__((used)) static void
FUNC3 (struct objfile *objfile)
{
  if (objfile)
    FUNC1 ();

  else if (uw_thread_active)
    FUNC0 ();

  if (&target_new_objfile_chain)
    FUNC2 (objfile);
}