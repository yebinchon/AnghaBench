
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct __cvmx_interrupt_handler {int data; int (* handler ) (int,int*,int ) ;} ;
struct TYPE_2__ {struct __cvmx_interrupt_handler* handlers; } ;


 int CVMX_CIU_INTX_EN1 (int) ;
 int CVMX_CIU_SUM1_PPX_IP3 (int) ;
 int CVMX_DCLZ (int,int) ;
 int* cvmx_ciu_en1_to_irq ;
 int cvmx_get_core_num () ;
 unsigned long long cvmx_interrupt_ciu_en1_mirror ;
 TYPE_1__ cvmx_interrupt_state ;
 unsigned long long cvmx_read_csr (int ) ;
 scalar_t__ cvmx_unlikely (int) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int stub1 (int,int*,int ) ;

__attribute__((used)) static void __cvmx_interrupt_ciu_cn61xx(int irq_number, uint64_t *registers, void *user_arg)
{

    int core = cvmx_get_core_num();
    int ciu_offset;
    uint64_t irq_mask;
    uint64_t irq;
    int bit;

    ciu_offset = core * 2 + 1;
    irq_mask = cvmx_read_csr(CVMX_CIU_SUM1_PPX_IP3(core)) & cvmx_interrupt_ciu_en1_mirror;
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
