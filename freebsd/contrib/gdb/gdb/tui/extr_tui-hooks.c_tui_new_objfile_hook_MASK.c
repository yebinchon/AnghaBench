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
 scalar_t__ tui_active ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct objfile*) ; 

__attribute__((used)) static void
FUNC2 (struct objfile* objfile)
{
  if (tui_active)
    FUNC0 ();
  
  if (&tui_target_new_objfile_chain)
    FUNC1 (objfile);
}