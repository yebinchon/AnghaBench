
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_10__ {void** control; void** asid; void** address_mask; void** address; void* status; } ;
struct TYPE_9__ {void** control; void** asid; void** address_mask; void** address; void* status; } ;
struct TYPE_8__ {int desave; int depc; int * perfctrl; int * perfval; int multicoredebug; int debug; int cause; int status; int pagemask; int entryhi; int * entrylo; int index; } ;
struct TYPE_12__ {TYPE_4__* tlbs; TYPE_3__ hw_dbp; TYPE_2__ hw_ibp; TYPE_1__ cop0; void* hi; void* lo; scalar_t__ regs; } ;
typedef TYPE_5__ cvmx_debug_core_context_t ;
struct TYPE_13__ {unsigned int tlb_entries; } ;
struct TYPE_11__ {int pagemask; int entryhi; int * entrylo; } ;


 int COP0_CAUSE ;
 int COP0_DEBUG ;
 int COP0_DEPC ;
 int COP0_DESAVE ;
 int COP0_ENTRYHI ;
 int COP0_ENTRYLO0 ;
 int COP0_ENTRYLO1 ;
 int COP0_INDEX ;
 int COP0_MULTICOREDEBUG ;
 int COP0_PAGEMASK ;
 int COP0_PERFCONTROL0 ;
 int COP0_PERFCONTROL1 ;
 int COP0_PERFVALUE0 ;
 int COP0_PERFVALUE1 ;
 int COP0_STATUS ;
 int CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS (unsigned int) ;
 int CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS_MASK (unsigned int) ;
 int CVMX_DEBUG_HW_DATA_BREAKPOINT_ASID (unsigned int) ;
 int CVMX_DEBUG_HW_DATA_BREAKPOINT_CONTROL (unsigned int) ;
 int CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS ;
 int CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS (unsigned int) ;
 int CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS_MASK (unsigned int) ;
 int CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ASID (unsigned int) ;
 int CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_CONTROL (unsigned int) ;
 int CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS ;
 int CVMX_MF_COP0 (int ,int ) ;
 int CVMX_MT_COP0 (unsigned int,int ) ;
 int CVMX_SYNCW ;
 int __cvmx_debug_save_regs_area ;
 TYPE_7__* cvmx_debug_globals ;
 int cvmx_debug_memcpy_align (char*,int ,int) ;
 void* cvmx_read_csr (int ) ;

__attribute__((used)) static void cvmx_debug_save_core_context(volatile cvmx_debug_core_context_t *context, uint64_t hi, uint64_t lo)
{
    unsigned i;
    cvmx_debug_memcpy_align ((char *) context->regs, __cvmx_debug_save_regs_area, sizeof(context->regs));
    context->lo = lo;
    context->hi = hi;
    CVMX_MF_COP0(context->cop0.index, COP0_INDEX);
    CVMX_MF_COP0(context->cop0.entrylo[0], COP0_ENTRYLO0);
    CVMX_MF_COP0(context->cop0.entrylo[1], COP0_ENTRYLO1);
    CVMX_MF_COP0(context->cop0.entryhi, COP0_ENTRYHI);
    CVMX_MF_COP0(context->cop0.pagemask, COP0_PAGEMASK);
    CVMX_MF_COP0(context->cop0.status, COP0_STATUS);
    CVMX_MF_COP0(context->cop0.cause, COP0_CAUSE);
    CVMX_MF_COP0(context->cop0.debug, COP0_DEBUG);
    CVMX_MF_COP0(context->cop0.multicoredebug, COP0_MULTICOREDEBUG);
    CVMX_MF_COP0(context->cop0.perfval[0], COP0_PERFVALUE0);
    CVMX_MF_COP0(context->cop0.perfval[1], COP0_PERFVALUE1);
    CVMX_MF_COP0(context->cop0.perfctrl[0], COP0_PERFCONTROL0);
    CVMX_MF_COP0(context->cop0.perfctrl[1], COP0_PERFCONTROL1);


    CVMX_MF_COP0(context->cop0.depc, COP0_DEPC);
    CVMX_MF_COP0(context->cop0.desave, COP0_DESAVE);

    context->hw_ibp.status = cvmx_read_csr(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_STATUS);
    for (i = 0; i < 4; i++)
    {
        context->hw_ibp.address[i] = cvmx_read_csr(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS(i));
        context->hw_ibp.address_mask[i] = cvmx_read_csr(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ADDRESS_MASK(i));
        context->hw_ibp.asid[i] = cvmx_read_csr(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_ASID(i));
        context->hw_ibp.control[i] = cvmx_read_csr(CVMX_DEBUG_HW_INSTRUCTION_BREAKPOINT_CONTROL(i));
    }

    context->hw_dbp.status = cvmx_read_csr(CVMX_DEBUG_HW_DATA_BREAKPOINT_STATUS);
    for (i = 0; i < 4; i++)
    {
        context->hw_dbp.address[i] = cvmx_read_csr(CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS(i));
        context->hw_dbp.address_mask[i] = cvmx_read_csr(CVMX_DEBUG_HW_DATA_BREAKPOINT_ADDRESS_MASK(i));
        context->hw_dbp.asid[i] = cvmx_read_csr(CVMX_DEBUG_HW_DATA_BREAKPOINT_ASID(i));
        context->hw_dbp.control[i] = cvmx_read_csr(CVMX_DEBUG_HW_DATA_BREAKPOINT_CONTROL(i));
    }

    for (i = 0; i < cvmx_debug_globals->tlb_entries; i++)
    {
        CVMX_MT_COP0(i, COP0_INDEX);
        asm volatile ("tlbr");
        CVMX_MF_COP0(context->tlbs[i].entrylo[0], COP0_ENTRYLO0);
        CVMX_MF_COP0(context->tlbs[i].entrylo[1], COP0_ENTRYLO1);
        CVMX_MF_COP0(context->tlbs[i].entryhi, COP0_ENTRYHI);
        CVMX_MF_COP0(context->tlbs[i].pagemask, COP0_PAGEMASK);
    }
    CVMX_SYNCW;
}
