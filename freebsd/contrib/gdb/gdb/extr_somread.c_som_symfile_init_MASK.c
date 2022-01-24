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
struct objfile {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJF_REORDERED ; 
 int /*<<< orphan*/  FUNC0 (struct objfile*) ; 

__attribute__((used)) static void
FUNC1 (struct objfile *objfile)
{
  /* SOM objects may be reordered, so set OBJF_REORDERED.  If we
     find this causes a significant slowdown in gdb then we could
     set it in the debug symbol readers only when necessary.  */
  objfile->flags |= OBJF_REORDERED;
  FUNC0 (objfile);
}