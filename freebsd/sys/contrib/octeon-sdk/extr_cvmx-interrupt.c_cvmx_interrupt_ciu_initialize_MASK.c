#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  core_mask; } ;
typedef  TYPE_1__ cvmx_sysinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ CVMX_IRQ_AGL ; 
 scalar_t__ CVMX_IRQ_AGX0 ; 
 scalar_t__ CVMX_IRQ_BOOTDMA ; 
 scalar_t__ CVMX_IRQ_DFA ; 
 scalar_t__ CVMX_IRQ_DFM ; 
 scalar_t__ CVMX_IRQ_DPI ; 
 scalar_t__ CVMX_IRQ_DPI_DMA ; 
 scalar_t__ CVMX_IRQ_FPA ; 
 scalar_t__ CVMX_IRQ_GMX_DRP0 ; 
 scalar_t__ CVMX_IRQ_GPIO0 ; 
 scalar_t__ CVMX_IRQ_IOB ; 
 scalar_t__ CVMX_IRQ_IPD ; 
 scalar_t__ CVMX_IRQ_IPDPPTHR ; 
 scalar_t__ CVMX_IRQ_IPD_DRP ; 
 scalar_t__ CVMX_IRQ_KEY ; 
 scalar_t__ CVMX_IRQ_KEY_ZERO ; 
 scalar_t__ CVMX_IRQ_L2C ; 
 scalar_t__ CVMX_IRQ_LMC0 ; 
 scalar_t__ CVMX_IRQ_MBOX0 ; 
 scalar_t__ CVMX_IRQ_MII0 ; 
 scalar_t__ CVMX_IRQ_MIO ; 
 scalar_t__ CVMX_IRQ_MPI ; 
 scalar_t__ CVMX_IRQ_NAND ; 
 scalar_t__ CVMX_IRQ_PCI_INT0 ; 
 scalar_t__ CVMX_IRQ_PCI_MSI0 ; 
 scalar_t__ CVMX_IRQ_PCM ; 
 scalar_t__ CVMX_IRQ_PEM0 ; 
 scalar_t__ CVMX_IRQ_PEM1 ; 
 scalar_t__ CVMX_IRQ_PIP ; 
 scalar_t__ CVMX_IRQ_PKO ; 
 scalar_t__ CVMX_IRQ_POW ; 
 scalar_t__ CVMX_IRQ_POWIQ ; 
 scalar_t__ CVMX_IRQ_PTP ; 
 scalar_t__ CVMX_IRQ_RAD ; 
 scalar_t__ CVMX_IRQ_RML ; 
 scalar_t__ CVMX_IRQ_RST ; 
 scalar_t__ CVMX_IRQ_SLI ; 
 scalar_t__ CVMX_IRQ_SRIO0 ; 
 scalar_t__ CVMX_IRQ_SRIO1 ; 
 scalar_t__ CVMX_IRQ_SRIO2 ; 
 scalar_t__ CVMX_IRQ_TIM ; 
 scalar_t__ CVMX_IRQ_TIMER0 ; 
 scalar_t__ CVMX_IRQ_TIMER4 ; 
 scalar_t__ CVMX_IRQ_TRACE0 ; 
 scalar_t__ CVMX_IRQ_TWSI0 ; 
 scalar_t__ CVMX_IRQ_UART0 ; 
 scalar_t__ CVMX_IRQ_USB0 ; 
 scalar_t__ CVMX_IRQ_USBCTL ; 
 scalar_t__ CVMX_IRQ_WDOG0 ; 
 scalar_t__ CVMX_IRQ_WORKQ0 ; 
 scalar_t__ CVMX_IRQ_ZIP ; 
 int /*<<< orphan*/  OCTEON_CN61XX ; 
 int /*<<< orphan*/  OCTEON_CN66XX_PASS1_2 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int) ; 
 int* cvmx_ciu_61xx_timer_to_irq ; 
 int* cvmx_ciu_en0_to_irq ; 
 int* cvmx_ciu_en1_to_irq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 scalar_t__ cvmx_interrupt_ciu_61xx_timer_mirror ; 
 scalar_t__ cvmx_interrupt_ciu_en0_mirror ; 
 scalar_t__ cvmx_interrupt_ciu_en1_mirror ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void FUNC9(cvmx_sysinfo_t *sys_info_ptr)
{
    int i;
    int core = FUNC6();

    /* Disable all CIU interrupts by default */
    cvmx_interrupt_ciu_en0_mirror = 0;
    cvmx_interrupt_ciu_en1_mirror = 0;
    cvmx_interrupt_ciu_61xx_timer_mirror = 0;
    FUNC7(FUNC1(core * 2), cvmx_interrupt_ciu_en0_mirror);
    FUNC7(FUNC1((core * 2)+1), cvmx_interrupt_ciu_en0_mirror);
    FUNC7(FUNC2(core * 2), cvmx_interrupt_ciu_en1_mirror);
    FUNC7(FUNC2((core * 2)+1), cvmx_interrupt_ciu_en1_mirror);
    if (FUNC3(OCTEON_CN61XX) || FUNC3(OCTEON_CN66XX_PASS1_2))
        FUNC7(FUNC0(FUNC6()), cvmx_interrupt_ciu_61xx_timer_mirror);

    if (!FUNC5(sys_info_ptr->core_mask)|| FUNC8())
        return;

    /* On the first core, set up the maps */
    for (i = 0; i < 64; i++) {
        cvmx_ciu_en0_to_irq[i] = 0xff;
        cvmx_ciu_en1_to_irq[i] = 0xff;
        cvmx_ciu_61xx_timer_to_irq[i] = 0xff;
    }

    /* WORKQ */
    for (i = 0; i < 16; i++)
        FUNC4(CVMX_IRQ_WORKQ0 + i, 0, i);
    /* GPIO */
    for (i = 0; i < 16; i++)
        FUNC4(CVMX_IRQ_GPIO0 + i, 0, i + 16);

    /* MBOX */
    for (i = 0; i < 2; i++)
        FUNC4(CVMX_IRQ_MBOX0 + i, 0, i + 32);

    /* UART */
    FUNC4(CVMX_IRQ_UART0 + 0, 0, 34);
    FUNC4(CVMX_IRQ_UART0 + 1, 0, 35);
    FUNC4(CVMX_IRQ_UART0 + 2, 1, 16);

    /* PCI */
    for (i = 0; i < 4; i++)
        FUNC4(CVMX_IRQ_PCI_INT0 + i, 0, i + 36);

    /* MSI */
    for (i = 0; i < 4; i++)
        FUNC4(CVMX_IRQ_PCI_MSI0 + i, 0, i + 40);

    /* TWSI */
    FUNC4(CVMX_IRQ_TWSI0 + 0, 0, 45);
    FUNC4(CVMX_IRQ_TWSI0 + 1, 0, 59);

    /* other */
    FUNC4(CVMX_IRQ_RML, 0, 46);
    FUNC4(CVMX_IRQ_TRACE0, 0, 47);

    /* GMX_DRP */
    for (i = 0; i < 2; i++)
        FUNC4(CVMX_IRQ_GMX_DRP0 + i, 0, i + 48);

    FUNC4(CVMX_IRQ_IPD_DRP, 0, 50);
    FUNC4(CVMX_IRQ_KEY_ZERO, 0, 51);

    /* TIMER0 */
    for (i = 0; i < 4; i++)
        FUNC4(CVMX_IRQ_TIMER0 + i, 0, i + 52);

    /* TIMER4..9 */
    for(i = 0; i < 6; i++)
        FUNC4(CVMX_IRQ_TIMER4 + i, 8, i + 4);

    FUNC4(CVMX_IRQ_USB0 + 0, 0, 56);
    FUNC4(CVMX_IRQ_USB0 + 1, 1, 17);
    FUNC4(CVMX_IRQ_PCM, 0, 57);
    FUNC4(CVMX_IRQ_MPI, 0, 58);
    FUNC4(CVMX_IRQ_POWIQ, 0, 60);
    FUNC4(CVMX_IRQ_IPDPPTHR, 0, 61);
    FUNC4(CVMX_IRQ_MII0 + 0, 0, 62);
    FUNC4(CVMX_IRQ_MII0 + 1, 1, 18);
    FUNC4(CVMX_IRQ_BOOTDMA, 0, 63);

    /* WDOG */
    for (i = 0; i < 16; i++)
        FUNC4(CVMX_IRQ_WDOG0 + i, 1, i);

    FUNC4(CVMX_IRQ_NAND, 1, 19);
    FUNC4(CVMX_IRQ_MIO, 1, 20);
    FUNC4(CVMX_IRQ_IOB, 1, 21);
    FUNC4(CVMX_IRQ_FPA, 1, 22);
    FUNC4(CVMX_IRQ_POW, 1, 23);
    FUNC4(CVMX_IRQ_L2C, 1, 24);
    FUNC4(CVMX_IRQ_IPD, 1, 25);
    FUNC4(CVMX_IRQ_PIP, 1, 26);
    FUNC4(CVMX_IRQ_PKO, 1, 27);
    FUNC4(CVMX_IRQ_ZIP, 1, 28);
    FUNC4(CVMX_IRQ_TIM, 1, 29);
    FUNC4(CVMX_IRQ_RAD, 1, 30);
    FUNC4(CVMX_IRQ_KEY, 1, 31);
    FUNC4(CVMX_IRQ_DFA, 1, 32);
    FUNC4(CVMX_IRQ_USBCTL, 1, 33);
    FUNC4(CVMX_IRQ_SLI, 1, 34);
    FUNC4(CVMX_IRQ_DPI, 1, 35);
    FUNC4(CVMX_IRQ_AGX0, 1, 36);
    FUNC4(CVMX_IRQ_AGX0 + 1, 1, 37);
    FUNC4(CVMX_IRQ_DPI_DMA, 1, 40);
    FUNC4(CVMX_IRQ_AGL, 1, 46);
    FUNC4(CVMX_IRQ_PTP, 1, 47);
    FUNC4(CVMX_IRQ_PEM0, 1, 48);
    FUNC4(CVMX_IRQ_PEM1, 1, 49);
    FUNC4(CVMX_IRQ_SRIO0, 1, 50);
    FUNC4(CVMX_IRQ_SRIO1, 1, 51);
    FUNC4(CVMX_IRQ_LMC0, 1, 52);
    FUNC4(CVMX_IRQ_DFM, 1, 56);
    FUNC4(CVMX_IRQ_SRIO2, 1, 60);
    FUNC4(CVMX_IRQ_RST, 1, 63);
}