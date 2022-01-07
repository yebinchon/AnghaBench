
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RSTOUTn_MASK_ARMV7 ;
 int RSTOUTn_MASK_WD ;
 int WD_CPU0_MASK ;
 int WD_GLOBAL_MASK ;
 int WD_RSTOUTn_MASK ;
 int read_cpu_misc (int ) ;
 int read_cpu_mp_clocks (int ) ;
 int write_cpu_misc (int ,int) ;
 int write_cpu_mp_clocks (int ,int) ;

__attribute__((used)) static __inline void
mv_wdt_disable_armada_38x_xp_helper(void)
{
 uint32_t val;

 val = read_cpu_mp_clocks(WD_RSTOUTn_MASK);
 val &= ~(WD_GLOBAL_MASK | WD_CPU0_MASK);
 write_cpu_mp_clocks(WD_RSTOUTn_MASK, val);

 val = read_cpu_misc(RSTOUTn_MASK_ARMV7);
 val |= RSTOUTn_MASK_WD;
 write_cpu_misc(RSTOUTn_MASK_ARMV7, RSTOUTn_MASK_WD);
}
