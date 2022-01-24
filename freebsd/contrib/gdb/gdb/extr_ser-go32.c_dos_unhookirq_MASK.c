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
struct intrupt {scalar_t__ inuse; int /*<<< orphan*/  new_pmhandler; int /*<<< orphan*/  old_pmhandler; int /*<<< orphan*/  new_rmhandler; int /*<<< orphan*/  old_rmhandler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICU_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned char icu_oldmask ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ) ; 
 struct intrupt* intrupts ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void
FUNC8 (struct intrupt *intr)
{
  unsigned int irq, vec;
  unsigned char mask;

  irq = intr - intrupts;
  vec = 0x08 + irq;

  /* restore old interrupt mask bit */
  mask = 1 << irq;
  FUNC4 ();
  FUNC7 (ICU_MASK, FUNC6 (ICU_MASK) | (mask & icu_oldmask));
  FUNC5 ();

  /* remove real mode handler */
  FUNC3 (vec, &intr->old_rmhandler);
  FUNC1 (&intr->new_rmhandler);

  /* remove protected mode handler */
  FUNC2 (vec, &intr->old_pmhandler);
  FUNC0 (&intr->new_pmhandler);
  intr->inuse = 0;
}