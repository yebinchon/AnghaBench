
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int RSTOUTn_MASK_ARMV7 ;
 int SOFT_RST_OUT_EN_ARMV7 ;
 int SYSTEM_SOFT_RESET_ARMV7 ;
 int SYS_SOFT_RST_ARMV7 ;
 int write_cpu_misc (int ,int ) ;

__attribute__((used)) static void
mv_cpu_reset(platform_t plat)
{

 write_cpu_misc(RSTOUTn_MASK_ARMV7, SOFT_RST_OUT_EN_ARMV7);
 write_cpu_misc(SYSTEM_SOFT_RESET_ARMV7, SYS_SOFT_RST_ARMV7);
}
