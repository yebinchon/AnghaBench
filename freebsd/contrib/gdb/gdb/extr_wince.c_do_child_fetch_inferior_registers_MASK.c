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
struct TYPE_2__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int NUM_REGS ; 
 TYPE_1__* current_thread ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void
FUNC2 (int r)
{
  if (r >= 0)
    {
      FUNC1 (r, (char *) FUNC0 (&current_thread->context, r));
    }
  else
    {
      for (r = 0; r < NUM_REGS; r++)
	FUNC2 (r);
    }
}