
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COP0_BADVADDR ;
 int COP0_CAUSE ;
 int COP0_EPC ;
 int COP0_STATUS ;
 int CVMX_MF_COP0 (int ,int ) ;
 scalar_t__ HI32 (int ) ;
 scalar_t__ LO32 (int ) ;
 int cvmx_safe_printf (char*,int ,int,unsigned int,unsigned int,int ,int,unsigned int,unsigned int) ;
 int print_reg64 (char*,int ) ;
 int * reg_names ;

__attribute__((used)) static void __cvmx_interrupt_dump_registers(uint64_t *registers)
{
    uint64_t r1, r2;
    int reg;
    for (reg=0; reg<16; reg++)
    {
        r1 = registers[reg]; r2 = registers[reg+16];
        cvmx_safe_printf("%3s ($%02d): 0x%08x%08x \t %3s ($%02d): 0x%08x%08x\n",
                           reg_names[reg], reg, (unsigned int)HI32(r1), (unsigned int)LO32(r1),
                           reg_names[reg+16], reg+16, (unsigned int)HI32(r2), (unsigned int)LO32(r2));
    }
    CVMX_MF_COP0 (r1, COP0_CAUSE);
    print_reg64 ("COP0_CAUSE", r1);
    CVMX_MF_COP0 (r2, COP0_STATUS);
    print_reg64 ("COP0_STATUS", r2);
    CVMX_MF_COP0 (r1, COP0_BADVADDR);
    print_reg64 ("COP0_BADVADDR", r1);
    CVMX_MF_COP0 (r2, COP0_EPC);
    print_reg64 ("COP0_EPC", r2);
}
