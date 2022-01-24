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
struct variant {int nregs; int npregs; int /*<<< orphan*/  num_tot_regs; int /*<<< orphan*/  regs; scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct variant* variants ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct variant *v;

  for (v = variants; v->name; v++)
    {
      if (v->nregs == -1)
        v->nregs = FUNC1 (v->regs, v->num_tot_regs);
      if (v->npregs == -1)
        v->npregs = FUNC0 (v->regs, v->num_tot_regs);
    }  
}