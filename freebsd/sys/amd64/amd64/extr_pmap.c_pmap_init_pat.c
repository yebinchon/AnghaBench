
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;


 int CPUID_PAT ;
 int CR0_CD ;
 int CR0_NW ;
 int CR4_PGE ;
 int MSR_PAT ;
 int PAT_INDEX_SIZE ;
 size_t PAT_UNCACHEABLE ;
 size_t PAT_UNCACHED ;
 int PAT_VALUE (int,size_t) ;
 size_t PAT_WRITE_BACK ;
 size_t PAT_WRITE_COMBINING ;
 size_t PAT_WRITE_PROTECTED ;
 size_t PAT_WRITE_THROUGH ;
 int cpu_feature ;
 int invltlb () ;
 int load_cr0 (int) ;
 int load_cr4 (int) ;
 int panic (char*) ;
 int* pat_index ;
 int rcr0 () ;
 int rcr4 () ;
 int wbinvd () ;
 int wrmsr (int ,int) ;

void
pmap_init_pat(void)
{
 uint64_t pat_msr;
 u_long cr0, cr4;
 int i;


 if ((cpu_feature & CPUID_PAT) == 0)
  panic("no PAT??");


 for (i = 0; i < PAT_INDEX_SIZE; i++)
  pat_index[i] = -1;
 pat_index[PAT_WRITE_BACK] = 0;
 pat_index[PAT_WRITE_THROUGH] = 1;
 pat_index[PAT_UNCACHEABLE] = 3;
 pat_index[PAT_WRITE_COMBINING] = 6;
 pat_index[PAT_WRITE_PROTECTED] = 5;
 pat_index[PAT_UNCACHED] = 2;
 pat_msr = PAT_VALUE(0, PAT_WRITE_BACK) |
     PAT_VALUE(1, PAT_WRITE_THROUGH) |
     PAT_VALUE(2, PAT_UNCACHED) |
     PAT_VALUE(3, PAT_UNCACHEABLE) |
     PAT_VALUE(4, PAT_WRITE_BACK) |
     PAT_VALUE(5, PAT_WRITE_PROTECTED) |
     PAT_VALUE(6, PAT_WRITE_COMBINING) |
     PAT_VALUE(7, PAT_UNCACHEABLE);


 cr4 = rcr4();
 load_cr4(cr4 & ~CR4_PGE);


 cr0 = rcr0();
 load_cr0((cr0 & ~CR0_NW) | CR0_CD);


 wbinvd();
 invltlb();


 wrmsr(MSR_PAT, pat_msr);


 wbinvd();
 invltlb();


 load_cr0(cr0);
 load_cr4(cr4);
}
