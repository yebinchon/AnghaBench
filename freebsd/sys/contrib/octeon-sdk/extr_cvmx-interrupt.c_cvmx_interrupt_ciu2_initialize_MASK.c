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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ CVMX_IRQ_AGL ; 
 scalar_t__ CVMX_IRQ_AGX0 ; 
 scalar_t__ CVMX_IRQ_BOOTDMA ; 
 scalar_t__ CVMX_IRQ_DFA ; 
 scalar_t__ CVMX_IRQ_DPI ; 
 scalar_t__ CVMX_IRQ_DPI_DMA ; 
 scalar_t__ CVMX_IRQ_FPA ; 
 scalar_t__ CVMX_IRQ_GMX_DRP0 ; 
 scalar_t__ CVMX_IRQ_GPIO0 ; 
 scalar_t__ CVMX_IRQ_ILK ; 
 scalar_t__ CVMX_IRQ_IOB ; 
 scalar_t__ CVMX_IRQ_IPD ; 
 scalar_t__ CVMX_IRQ_IPDPPTHR ; 
 scalar_t__ CVMX_IRQ_IPD_DRP ; 
 scalar_t__ CVMX_IRQ_KEY ; 
 scalar_t__ CVMX_IRQ_L2C ; 
 scalar_t__ CVMX_IRQ_LMC0 ; 
 scalar_t__ CVMX_IRQ_MBOX0 ; 
 scalar_t__ CVMX_IRQ_MII0 ; 
 scalar_t__ CVMX_IRQ_MIO ; 
 scalar_t__ CVMX_IRQ_NAND ; 
 scalar_t__ CVMX_IRQ_PCI_INT0 ; 
 scalar_t__ CVMX_IRQ_PCI_MSI0 ; 
 scalar_t__ CVMX_IRQ_PEM0 ; 
 scalar_t__ CVMX_IRQ_PEM1 ; 
 scalar_t__ CVMX_IRQ_PIP ; 
 scalar_t__ CVMX_IRQ_PKO ; 
 scalar_t__ CVMX_IRQ_POW ; 
 scalar_t__ CVMX_IRQ_PTP ; 
 scalar_t__ CVMX_IRQ_RAD ; 
 scalar_t__ CVMX_IRQ_RST ; 
 scalar_t__ CVMX_IRQ_SLI ; 
 scalar_t__ CVMX_IRQ_TIM ; 
 scalar_t__ CVMX_IRQ_TIMER0 ; 
 scalar_t__ CVMX_IRQ_TRACE0 ; 
 scalar_t__ CVMX_IRQ_TWSI0 ; 
 scalar_t__ CVMX_IRQ_UART0 ; 
 scalar_t__ CVMX_IRQ_USB0 ; 
 scalar_t__ CVMX_IRQ_USBCTL ; 
 scalar_t__ CVMX_IRQ_WDOG0 ; 
 scalar_t__ CVMX_IRQ_WORKQ0 ; 
 scalar_t__ CVMX_IRQ_ZIP ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int,int) ; 
 int* cvmx_ciu2_eth_to_irq ; 
 int* cvmx_ciu2_gpio_to_irq ; 
 int* cvmx_ciu2_io_to_irq ; 
 int* cvmx_ciu2_mbox_to_irq ; 
 int* cvmx_ciu2_mem_to_irq ; 
 int* cvmx_ciu2_mio_to_irq ; 
 int* cvmx_ciu2_rml_to_irq ; 
 int* cvmx_ciu2_wdog_to_irq ; 
 int* cvmx_ciu2_wrkq_to_irq ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 () ; 

__attribute__((used)) static void FUNC32(cvmx_sysinfo_t *sys_info_ptr)
{
    int i;

    /* Disable all CIU2 interrupts by default */

    FUNC30(FUNC8(FUNC29()), 0);
    FUNC30(FUNC17(FUNC29()), 0);
    FUNC30(FUNC26(FUNC29()), 0);
    FUNC30(FUNC7(FUNC29()), 0);
    FUNC30(FUNC16(FUNC29()), 0);
    FUNC30(FUNC25(FUNC29()), 0);
    FUNC30(FUNC6(FUNC29()), 0);
    FUNC30(FUNC15(FUNC29()), 0);
    FUNC30(FUNC24(FUNC29()), 0);
    FUNC30(FUNC4(FUNC29()), 0);
    FUNC30(FUNC13(FUNC29()), 0);
    FUNC30(FUNC22(FUNC29()), 0);
    FUNC30(FUNC1(FUNC29()), 0);
    FUNC30(FUNC10(FUNC29()), 0);
    FUNC30(FUNC19(FUNC29()), 0);
    FUNC30(FUNC3(FUNC29()), 0);
    FUNC30(FUNC12(FUNC29()), 0);
    FUNC30(FUNC21(FUNC29()), 0);
    FUNC30(FUNC5(FUNC29()), 0);
    FUNC30(FUNC14(FUNC29()), 0);
    FUNC30(FUNC23(FUNC29()), 0);
    FUNC30(FUNC0(FUNC29()), 0);
    FUNC30(FUNC9(FUNC29()), 0);
    FUNC30(FUNC18(FUNC29()), 0);
    FUNC30(FUNC2(FUNC29()), 0);
    FUNC30(FUNC11(FUNC29()), 0);
    FUNC30(FUNC20(FUNC29()), 0);

    if (!FUNC28(sys_info_ptr->core_mask) || FUNC31())
        return;

    /* On the first core, set up the maps */
    for (i = 0; i < 64; i++) {
        cvmx_ciu2_wrkq_to_irq[i] = 0xff;
        cvmx_ciu2_wdog_to_irq[i] = 0xff;
        cvmx_ciu2_rml_to_irq[i] = 0xff;
        cvmx_ciu2_mio_to_irq[i] = 0xff;
        cvmx_ciu2_io_to_irq[i] = 0xff;
        cvmx_ciu2_mem_to_irq[i] = 0xff;
        cvmx_ciu2_eth_to_irq[i] = 0xff;
        cvmx_ciu2_gpio_to_irq[i] = 0xff;
        cvmx_ciu2_mbox_to_irq[i] = 0xff;
    }

    /* WORKQ */
    for (i = 0; i < 64; i++)
        FUNC27(CVMX_IRQ_WORKQ0 + i, 0, i);

    /* GPIO */
    for (i = 0; i < 16; i++)
        FUNC27(CVMX_IRQ_GPIO0 + i, 7, i);

    /* MBOX */
    for (i = 0; i < 4; i++)
        FUNC27(CVMX_IRQ_MBOX0 + i, 60, i);

    /* UART */
    for (i = 0; i < 2; i++)
        FUNC27(CVMX_IRQ_UART0 + i, 3, 36 + i);

    /* PCI */
    for (i = 0; i < 4; i++)
        FUNC27(CVMX_IRQ_PCI_INT0 + i, 4, 16 + i);

    /* MSI */
    for (i = 0; i < 4; i++)
        FUNC27(CVMX_IRQ_PCI_MSI0 + i, 4, 8 + i);

    /* TWSI */
    for (i = 0; i < 2; i++)
        FUNC27(CVMX_IRQ_TWSI0 + i, 3, 32 + i);

    /* TRACE */
    for (i = 0; i < 4; i++)
        FUNC27(CVMX_IRQ_TRACE0 + i, 2, 52 + i);

    /* GMX_DRP */
    for (i = 0; i < 5; i++)
        FUNC27(CVMX_IRQ_GMX_DRP0 + i, 6, 8 + i);

    FUNC27(CVMX_IRQ_IPD_DRP, 3, 2);

    /* TIMER0 */
    for (i = 0; i < 4; i++)
        FUNC27(CVMX_IRQ_TIMER0 + i, 3, 8 + i);

    FUNC27(CVMX_IRQ_USB0, 3, 44);
    FUNC27(CVMX_IRQ_IPDPPTHR, 3, 0);
    FUNC27(CVMX_IRQ_MII0, 6, 40);
    FUNC27(CVMX_IRQ_BOOTDMA, 3, 18);

    /* WDOG */
    for (i = 0; i < 32; i++)
        FUNC27(CVMX_IRQ_WDOG0 + i, 1, i);

    FUNC27(CVMX_IRQ_NAND, 3, 16);
    FUNC27(CVMX_IRQ_MIO, 3, 17);
    FUNC27(CVMX_IRQ_IOB, 2, 0);
    FUNC27(CVMX_IRQ_FPA, 2, 4);
    FUNC27(CVMX_IRQ_POW, 2, 16);
    FUNC27(CVMX_IRQ_L2C, 2, 48);
    FUNC27(CVMX_IRQ_IPD, 2, 5);
    FUNC27(CVMX_IRQ_PIP, 2, 6);
    FUNC27(CVMX_IRQ_PKO, 2, 7);
    FUNC27(CVMX_IRQ_ZIP, 2, 24);
    FUNC27(CVMX_IRQ_TIM, 2, 28);
    FUNC27(CVMX_IRQ_RAD, 2, 29);
    FUNC27(CVMX_IRQ_KEY, 2, 30);
    FUNC27(CVMX_IRQ_DFA, 2, 40);
    FUNC27(CVMX_IRQ_USBCTL, 3, 40);
    FUNC27(CVMX_IRQ_SLI, 2, 32);
    FUNC27(CVMX_IRQ_DPI, 2, 33);
    FUNC27(CVMX_IRQ_DPI_DMA, 2, 36);

    /* AGX */
    for (i = 0; i < 5; i++)
        FUNC27(CVMX_IRQ_AGX0 + i, 6, i);

    FUNC27(CVMX_IRQ_AGL, 6, 32);
    FUNC27(CVMX_IRQ_PTP, 3, 48);
    FUNC27(CVMX_IRQ_PEM0, 4, 32);
    FUNC27(CVMX_IRQ_PEM1, 4, 32);

    /* LMC */
    for (i = 0; i < 4; i++)
        FUNC27(CVMX_IRQ_LMC0 + i, 5, i);

    FUNC27(CVMX_IRQ_RST, 3, 63);
    FUNC27(CVMX_IRQ_ILK, 6, 48);
}