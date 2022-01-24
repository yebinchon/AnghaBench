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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int handler_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int CVMX_IRQ_MAX ; 
 int CVMX_IRQ_MIPS7 ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  cvmx_interrupt_ciu_61xx_timer_mirror ; 
 int /*<<< orphan*/  cvmx_interrupt_ciu_en0_mirror ; 
 int /*<<< orphan*/  cvmx_interrupt_ciu_en1_mirror ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cvmx_interrupt_state ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int irq_number, int op)
{
    uint32_t flags;

    if (irq_number < 0 || irq_number >= CVMX_IRQ_MAX)
        return;

    flags = FUNC5();
    if (irq_number <=  CVMX_IRQ_MIPS7) {
        uint32_t mask;
        asm volatile ("mfc0 %0,$12,0" : "=r" (mask));
        FUNC0(mask, 1 << (8 + irq_number), op);
        asm volatile ("mtc0 %0,$12,0" : : "r" (mask));
    } else {
        int ciu_bit, ciu_offset;
        int bit = cvmx_interrupt_state.handlers[irq_number].handler_data;
        int is_timer_intr = bit >> 6;
        int core = FUNC4();

        if (bit < 0)
            goto out;

        ciu_bit = bit & 0x3f;
        ciu_offset = core * 2;

        if (is_timer_intr == 8)
        {
            FUNC0(cvmx_interrupt_ciu_61xx_timer_mirror, 1ull << ciu_bit, op);
            FUNC0(cvmx_interrupt_ciu_en0_mirror, 1ull << 51, op); // SUM2 bit
            FUNC7(FUNC1(core), cvmx_interrupt_ciu_61xx_timer_mirror);
        }
        else if (bit & 0x40) {
            /* EN1 */
            ciu_offset += 1;
            FUNC0(cvmx_interrupt_ciu_en1_mirror, 1ull << ciu_bit, op);
            FUNC7(FUNC3(ciu_offset), cvmx_interrupt_ciu_en1_mirror);
        } else {
            /* EN0 */
            FUNC0(cvmx_interrupt_ciu_en0_mirror, 1ull << ciu_bit, op);
            FUNC7(FUNC2(ciu_offset), cvmx_interrupt_ciu_en0_mirror);
        }
    }
out:
    FUNC6(flags);
}