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
struct TYPE_3__ {int SegCs; int SegDs; int SegEs; int SegSs; int SegFs; int SegGs; } ;
struct TYPE_4__ {int /*<<< orphan*/  h; TYPE_1__ context; } ;

/* Variables and functions */
 TYPE_2__* current_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char * args, int from_tty)
{
  if (!current_thread)
    {
      FUNC3 ("Impossible to display selectors now.\n");
      return;
    }
  if (!args)
    {

      FUNC3 ("Selector $cs\n");
      FUNC0 (current_thread->h,
	current_thread->context.SegCs);
      FUNC3 ("Selector $ds\n");
      FUNC0 (current_thread->h,
	current_thread->context.SegDs);
      FUNC3 ("Selector $es\n");
      FUNC0 (current_thread->h,
	current_thread->context.SegEs);
      FUNC3 ("Selector $ss\n");
      FUNC0 (current_thread->h,
	current_thread->context.SegSs);
      FUNC3 ("Selector $fs\n");
      FUNC0 (current_thread->h,
	current_thread->context.SegFs);
      FUNC3 ("Selector $gs\n");
      FUNC0 (current_thread->h,
	current_thread->context.SegGs);
    }
  else
    {
      int sel;
      sel = FUNC1 (args);
      FUNC2 ("Selector \"%s\"\n",args);
      FUNC0 (current_thread->h, sel);
    }
}