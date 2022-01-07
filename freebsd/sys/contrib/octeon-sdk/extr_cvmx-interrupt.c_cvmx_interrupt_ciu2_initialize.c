
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int core_mask; } ;
typedef TYPE_1__ cvmx_sysinfo_t ;


 int CVMX_CIU2_EN_PPX_IP2_GPIO (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_IO (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_MBOX (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_MEM (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_MIO (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_PKT (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_RML (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_WDOG (int ) ;
 int CVMX_CIU2_EN_PPX_IP2_WRKQ (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_GPIO (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_IO (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_MBOX (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_MEM (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_MIO (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_PKT (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_RML (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_WDOG (int ) ;
 int CVMX_CIU2_EN_PPX_IP3_WRKQ (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_GPIO (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_IO (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_MBOX (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_MEM (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_MIO (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_PKT (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_RML (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_WDOG (int ) ;
 int CVMX_CIU2_EN_PPX_IP4_WRKQ (int ) ;
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
 int __cvmx_interrupt_set_mapping (scalar_t__,int,int) ;
 int* cvmx_ciu2_eth_to_irq ;
 int* cvmx_ciu2_gpio_to_irq ;
 int* cvmx_ciu2_io_to_irq ;
 int* cvmx_ciu2_mbox_to_irq ;
 int* cvmx_ciu2_mem_to_irq ;
 int* cvmx_ciu2_mio_to_irq ;
 int* cvmx_ciu2_rml_to_irq ;
 int* cvmx_ciu2_wdog_to_irq ;
 int* cvmx_ciu2_wrkq_to_irq ;
 int cvmx_coremask_first_core (int ) ;
 int cvmx_get_core_num () ;
 int cvmx_write_csr (int ,int ) ;
 scalar_t__ is_core_being_hot_plugged () ;

__attribute__((used)) static void cvmx_interrupt_ciu2_initialize(cvmx_sysinfo_t *sys_info_ptr)
{
    int i;



    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_WRKQ(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_WRKQ(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_WRKQ(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_WDOG(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_WDOG(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_WDOG(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_RML(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_RML(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_RML(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_MIO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_MIO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_MIO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_IO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_IO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_IO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_MEM(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_MEM(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_MEM(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_PKT(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_PKT(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_PKT(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_GPIO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_GPIO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_GPIO(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP2_MBOX(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP3_MBOX(cvmx_get_core_num()), 0);
    cvmx_write_csr(CVMX_CIU2_EN_PPX_IP4_MBOX(cvmx_get_core_num()), 0);

    if (!cvmx_coremask_first_core(sys_info_ptr->core_mask) || is_core_being_hot_plugged())
        return;


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


    for (i = 0; i < 64; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_WORKQ0 + i, 0, i);


    for (i = 0; i < 16; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_GPIO0 + i, 7, i);


    for (i = 0; i < 4; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_MBOX0 + i, 60, i);


    for (i = 0; i < 2; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_UART0 + i, 3, 36 + i);


    for (i = 0; i < 4; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_PCI_INT0 + i, 4, 16 + i);


    for (i = 0; i < 4; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_PCI_MSI0 + i, 4, 8 + i);


    for (i = 0; i < 2; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_TWSI0 + i, 3, 32 + i);


    for (i = 0; i < 4; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_TRACE0 + i, 2, 52 + i);


    for (i = 0; i < 5; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_GMX_DRP0 + i, 6, 8 + i);

    __cvmx_interrupt_set_mapping(CVMX_IRQ_IPD_DRP, 3, 2);


    for (i = 0; i < 4; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_TIMER0 + i, 3, 8 + i);

    __cvmx_interrupt_set_mapping(CVMX_IRQ_USB0, 3, 44);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_IPDPPTHR, 3, 0);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_MII0, 6, 40);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_BOOTDMA, 3, 18);


    for (i = 0; i < 32; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_WDOG0 + i, 1, i);

    __cvmx_interrupt_set_mapping(CVMX_IRQ_NAND, 3, 16);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_MIO, 3, 17);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_IOB, 2, 0);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_FPA, 2, 4);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_POW, 2, 16);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_L2C, 2, 48);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_IPD, 2, 5);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_PIP, 2, 6);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_PKO, 2, 7);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_ZIP, 2, 24);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_TIM, 2, 28);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_RAD, 2, 29);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_KEY, 2, 30);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_DFA, 2, 40);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_USBCTL, 3, 40);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_SLI, 2, 32);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_DPI, 2, 33);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_DPI_DMA, 2, 36);


    for (i = 0; i < 5; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_AGX0 + i, 6, i);

    __cvmx_interrupt_set_mapping(CVMX_IRQ_AGL, 6, 32);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_PTP, 3, 48);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_PEM0, 4, 32);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_PEM1, 4, 32);


    for (i = 0; i < 4; i++)
        __cvmx_interrupt_set_mapping(CVMX_IRQ_LMC0 + i, 5, i);

    __cvmx_interrupt_set_mapping(CVMX_IRQ_RST, 3, 63);
    __cvmx_interrupt_set_mapping(CVMX_IRQ_ILK, 6, 48);
}
