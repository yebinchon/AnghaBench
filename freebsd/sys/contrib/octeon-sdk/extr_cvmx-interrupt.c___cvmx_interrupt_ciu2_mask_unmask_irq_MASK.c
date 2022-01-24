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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int handler_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int CVMX_IRQ_MAX ; 
 int CVMX_IRQ_MIPS7 ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cvmx_interrupt_state ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,unsigned long long) ; 

__attribute__((used)) static void FUNC9(int irq_number, int op)
{

    if (irq_number < 0 || irq_number >= CVMX_IRQ_MAX)
        return;

    if (irq_number <=  CVMX_IRQ_MIPS7) {
        uint32_t flags, mask;

        flags = FUNC6();
        asm volatile ("mfc0 %0,$12,0" : "=r" (mask));
        FUNC0(mask, 1 << (8 + irq_number), op);
        asm volatile ("mtc0 %0,$12,0" : : "r" (mask));
        FUNC7(flags);
    } else {
        int idx;
        uint64_t reg;
        int core = FUNC5();

        int bit = cvmx_interrupt_state.handlers[irq_number].handler_data;

        if (bit < 0)
            return;

        idx = bit >> 6;
        bit &= 0x3f;
        if (idx > 7) {
            /* MBOX */
            if (op)
                reg = FUNC1(core);
            else
                reg = FUNC2(core);
        } else {
            if (op)
                reg = FUNC3(core) + (0x1000 * idx);
            else
                reg = FUNC4(core) + (0x1000 * idx);
        }
        FUNC8(reg, 1ull << bit);
    }
}