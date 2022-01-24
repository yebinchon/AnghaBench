#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int options; TYPE_4__* p_LowQmPortal; } ;
typedef  TYPE_2__ t_QmPortal ;
struct TYPE_10__ {int /*<<< orphan*/  irq; } ;
struct TYPE_12__ {TYPE_1__ config; } ;

/* Variables and functions */
 int QMAN_PORTAL_FLAG_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(t_QmPortal *p_QmPortal)
{
    /* NB we do this to "quiesce" EQCR. If we add enqueue-completions or
     * something related to QM_PIRQ_EQCI, this may need fixing. */
    FUNC2(p_QmPortal->p_LowQmPortal);
    if (p_QmPortal->options & QMAN_PORTAL_FLAG_IRQ)
    {
        FUNC0(p_QmPortal->p_LowQmPortal->config.irq);
        FUNC1(p_QmPortal->p_LowQmPortal->config.irq);
    }
    FUNC5(p_QmPortal->p_LowQmPortal);
    FUNC6(p_QmPortal->p_LowQmPortal);
    FUNC7(p_QmPortal->p_LowQmPortal);
    FUNC3(p_QmPortal->p_LowQmPortal);
    FUNC4(p_QmPortal->p_LowQmPortal);
}