
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct __cvmx_interrupt_handler {int data; int (* handler ) (int,int*,int ) ;} ;
struct TYPE_2__ {struct __cvmx_interrupt_handler* handlers; } ;


 int CVMX_CIU_EN2_PPX_IP2 (int) ;
 int CVMX_CIU_INTX_EN0 (int) ;
 int CVMX_CIU_INTX_EN1 (int) ;
 int CVMX_CIU_INTX_SUM0 (int) ;
 int CVMX_CIU_INT_SUM1 ;
 int CVMX_CIU_SUM2_PPX_IP2 (int) ;
 int CVMX_DCLZ (int,int) ;
 int CVMX_IRQ_MIPS2 ;
 int OCTEON_CN61XX ;
 int OCTEON_CN66XX_PASS1_2 ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int* cvmx_ciu_61xx_timer_to_irq ;
 int* cvmx_ciu_en0_to_irq ;
 int* cvmx_ciu_en1_to_irq ;
 int cvmx_get_core_num () ;
 unsigned long long cvmx_interrupt_ciu_61xx_timer_mirror ;
 unsigned long long cvmx_interrupt_ciu_en0_mirror ;
 unsigned long long cvmx_interrupt_ciu_en1_mirror ;
 TYPE_1__ cvmx_interrupt_state ;
 unsigned long long cvmx_read_csr (int ) ;
 scalar_t__ cvmx_unlikely (int) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int stub1 (int,int*,int ) ;
 int stub2 (int,int*,int ) ;
 int stub3 (int,int*,int ) ;

__attribute__((used)) static void __cvmx_interrupt_ciu(int irq_number, uint64_t *registers, void *user_arg)
{
    int ciu_offset;
    uint64_t irq_mask;
    uint64_t irq;
    int bit;
    int core = cvmx_get_core_num();

    if (irq_number == CVMX_IRQ_MIPS2) {

        ciu_offset = core * 2;
        irq_mask = cvmx_read_csr(CVMX_CIU_INTX_SUM0(ciu_offset)) & cvmx_interrupt_ciu_en0_mirror;
        CVMX_DCLZ(bit, irq_mask);
        bit = 63 - bit;

        if (bit == 51 && (OCTEON_IS_MODEL(OCTEON_CN61XX) || OCTEON_IS_MODEL(OCTEON_CN66XX_PASS1_2))) {
            uint64_t irq_mask;
            int bit;
            irq_mask = cvmx_read_csr(CVMX_CIU_SUM2_PPX_IP2(core)) & cvmx_interrupt_ciu_61xx_timer_mirror;
            CVMX_DCLZ(bit, irq_mask);
            bit = 63 - bit;

            if (bit <= 9 && bit >= 4) {
                uint64_t irq = cvmx_ciu_61xx_timer_to_irq[bit];
                if (cvmx_unlikely(irq == 0xff)) {

                    cvmx_interrupt_ciu_61xx_timer_mirror &= ~(1ull << bit);
                    cvmx_write_csr(CVMX_CIU_EN2_PPX_IP2(core), cvmx_interrupt_ciu_61xx_timer_mirror);
                    return;
                }
                struct __cvmx_interrupt_handler *h = cvmx_interrupt_state.handlers + irq;
                h->handler(irq, registers, h->data);
                return;
            }
        }

        if (bit >= 0) {
            irq = cvmx_ciu_en0_to_irq[bit];
            if (cvmx_unlikely(irq == 0xff)) {

                cvmx_interrupt_ciu_en0_mirror &= ~(1ull << bit);
                cvmx_write_csr(CVMX_CIU_INTX_EN0(ciu_offset), cvmx_interrupt_ciu_en0_mirror);
                return;
            }
            struct __cvmx_interrupt_handler *h = cvmx_interrupt_state.handlers + irq;
            h->handler(irq, registers, h->data);
            return;
        }
    } else {

        ciu_offset = cvmx_get_core_num() * 2 + 1;
        irq_mask = cvmx_read_csr(CVMX_CIU_INT_SUM1) & cvmx_interrupt_ciu_en1_mirror;
        CVMX_DCLZ(bit, irq_mask);
        bit = 63 - bit;
        if (bit >= 0) {
            irq = cvmx_ciu_en1_to_irq[bit];
            if (cvmx_unlikely(irq == 0xff)) {

                cvmx_interrupt_ciu_en1_mirror &= ~(1ull << bit);
                cvmx_write_csr(CVMX_CIU_INTX_EN1(ciu_offset), cvmx_interrupt_ciu_en1_mirror);
                return;
            }
            struct __cvmx_interrupt_handler *h = cvmx_interrupt_state.handlers + irq;
            h->handler(irq, registers, h->data);
            return;
        }
    }
}
