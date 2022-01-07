
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int handler_data; } ;


 int CLEAR_OR_MASK (int ,unsigned long long,int) ;
 int CVMX_CIU_EN2_PPX_IP2 (int) ;
 int CVMX_CIU_INTX_EN0 (int) ;
 int CVMX_CIU_INTX_EN1 (int) ;
 int CVMX_IRQ_MAX ;
 int CVMX_IRQ_MIPS7 ;
 int cvmx_get_core_num () ;
 int cvmx_interrupt_ciu_61xx_timer_mirror ;
 int cvmx_interrupt_ciu_en0_mirror ;
 int cvmx_interrupt_ciu_en1_mirror ;
 int cvmx_interrupt_disable_save () ;
 int cvmx_interrupt_restore (int ) ;
 TYPE_2__ cvmx_interrupt_state ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static void __cvmx_interrupt_ciu_mask_unmask_irq(int irq_number, int op)
{
    uint32_t flags;

    if (irq_number < 0 || irq_number >= CVMX_IRQ_MAX)
        return;

    flags = cvmx_interrupt_disable_save();
    if (irq_number <= CVMX_IRQ_MIPS7) {
        uint32_t mask;
        asm volatile ("mfc0 %0,$12,0" : "=r" (mask));
        CLEAR_OR_MASK(mask, 1 << (8 + irq_number), op);
        asm volatile ("mtc0 %0,$12,0" : : "r" (mask));
    } else {
        int ciu_bit, ciu_offset;
        int bit = cvmx_interrupt_state.handlers[irq_number].handler_data;
        int is_timer_intr = bit >> 6;
        int core = cvmx_get_core_num();

        if (bit < 0)
            goto out;

        ciu_bit = bit & 0x3f;
        ciu_offset = core * 2;

        if (is_timer_intr == 8)
        {
            CLEAR_OR_MASK(cvmx_interrupt_ciu_61xx_timer_mirror, 1ull << ciu_bit, op);
            CLEAR_OR_MASK(cvmx_interrupt_ciu_en0_mirror, 1ull << 51, op);
            cvmx_write_csr(CVMX_CIU_EN2_PPX_IP2(core), cvmx_interrupt_ciu_61xx_timer_mirror);
        }
        else if (bit & 0x40) {

            ciu_offset += 1;
            CLEAR_OR_MASK(cvmx_interrupt_ciu_en1_mirror, 1ull << ciu_bit, op);
            cvmx_write_csr(CVMX_CIU_INTX_EN1(ciu_offset), cvmx_interrupt_ciu_en1_mirror);
        } else {

            CLEAR_OR_MASK(cvmx_interrupt_ciu_en0_mirror, 1ull << ciu_bit, op);
            cvmx_write_csr(CVMX_CIU_INTX_EN0(ciu_offset), cvmx_interrupt_ciu_en0_mirror);
        }
    }
out:
    cvmx_interrupt_restore(flags);
}
