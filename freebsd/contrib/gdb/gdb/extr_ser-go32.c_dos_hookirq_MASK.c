#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_long ;
struct TYPE_6__ {void* pm_offset; void* pm_selector; } ;
struct TYPE_5__ {void* pm_offset; void* pm_selector; } ;
struct intrupt {int inuse; TYPE_2__ new_pmhandler; int /*<<< orphan*/  old_pmhandler; TYPE_1__ new_rmhandler; int /*<<< orphan*/  regs; int /*<<< orphan*/  old_rmhandler; } ;
typedef  scalar_t__ isr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ICU_MASK ; 
 unsigned int NINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned int,TYPE_2__*) ; 
 scalar_t__ FUNC5 (unsigned int,TYPE_1__*) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct intrupt* intrupts ; 
 scalar_t__* isrs ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct intrupt *
FUNC11 (unsigned int irq)
{
  struct intrupt *intr;
  unsigned int vec;
  isr_t isr;

  if (irq >= NINTR)
    return 0;

  intr = &intrupts[irq];
  if (intr->inuse)
    return 0;

  vec = 0x08 + irq;
  isr = isrs[irq];

  /* setup real mode handler */
  FUNC3 (vec, &intr->old_rmhandler);

  intr->new_rmhandler.pm_selector = FUNC6 ();
  intr->new_rmhandler.pm_offset = (u_long) isr;
  if (FUNC1 (&intr->new_rmhandler,
						   &intr->regs))
    {
      return 0;
    }

  if (FUNC5 (vec, &intr->new_rmhandler))
    {
      return 0;
    }

  /* setup protected mode handler */
  FUNC2 (vec, &intr->old_pmhandler);

  intr->new_pmhandler.pm_selector = FUNC6 ();
  intr->new_pmhandler.pm_offset = (u_long) isr;
  FUNC0 (&intr->new_pmhandler);

  if (FUNC4 (vec,
						      &intr->new_pmhandler))
    {
      return 0;
    }

  /* setup interrupt controller mask */
  FUNC7 ();
  FUNC10 (ICU_MASK, FUNC9 (ICU_MASK) & ~(1 << irq));
  FUNC8 ();

  intr->inuse = 1;
  return intr;
}