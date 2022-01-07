
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Word ;
typedef int Elf_Addr ;


 int HIVAL (int,int) ;
 int JMPL_l0_o1 ;
 int LOVAL (int) ;
 int MOV_g1_o0 ;
 int OR_l0_l0 ;
 int OR_l0_l1_l0 ;
 int SAVE ;
 int SETHI_l0 ;
 int SETHI_l1 ;
 int SLLX_l0_32_l0 ;
 int flush (int*,int) ;

__attribute__((used)) static void
install_plt(Elf_Word *pltgot, Elf_Addr proc)
{

 pltgot[0] = SAVE;
 flush(pltgot, 0);
 pltgot[1] = SETHI_l0 | HIVAL(proc, 42);
 flush(pltgot, 4);
 pltgot[2] = SETHI_l1 | HIVAL(proc, 10);
 flush(pltgot, 8);
 pltgot[3] = OR_l0_l0 | LOVAL((proc) >> 32);
 flush(pltgot, 12);
 pltgot[4] = SLLX_l0_32_l0;
 flush(pltgot, 16);
 pltgot[5] = OR_l0_l1_l0;
 flush(pltgot, 20);
 pltgot[6] = JMPL_l0_o1 | LOVAL(proc);
 flush(pltgot, 24);
 pltgot[7] = MOV_g1_o0;
 flush(pltgot, 28);
}
