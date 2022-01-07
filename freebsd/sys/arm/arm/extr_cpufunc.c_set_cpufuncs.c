
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ARCHITECTURE_NOT_PRESENT ;
 int CPU_ID_ARM1176JZS ;
 int CPU_ID_ARM926EJS ;
 int CPU_ID_ARM_88SV581X_V7 ;
 int CPU_ID_CPU_MASK ;

 int CPU_ID_MV88FR131 ;
 int CPU_ID_MV88FR571_41 ;
 int CPU_ID_MV88FR571_VD ;
 int CPU_ID_MV88SV581X_V7 ;
 int CPU_ID_MV88SV584X_V7 ;
 int CPU_ID_SCHEME_MASK ;
 int MV_BTB_DISABLE ;
 int MV_DC_STREAM_ENABLE ;
 int MV_L2_ENABLE ;
 int MV_L2_PREFETCH_DISABLE ;
 int MV_WA_ENABLE ;
 int arm1176_cpufuncs ;
 int arm_dcache_align_mask ;
 int armv5_ec_cpufuncs ;
 int cortexa_cpufuncs ;
 int cp15_midr_get () ;
 int cpufuncs ;
 int cputype ;
 int get_cachetype_cp15 () ;
 int panic (char*,int) ;
 int pj4bv7_cpufuncs ;
 int pmap_pte_init_generic () ;
 int sheeva_control_ext (int,int) ;
 int sheeva_cpufuncs ;
 int uma_set_align (int ) ;

int
set_cpufuncs(void)
{
 cputype = cp15_midr_get();
 cputype &= CPU_ID_CPU_MASK;
 panic("No support for this CPU type (%08x) in kernel", cputype);
 return(ARCHITECTURE_NOT_PRESENT);
out:
 uma_set_align(arm_dcache_align_mask);
 return (0);
}
