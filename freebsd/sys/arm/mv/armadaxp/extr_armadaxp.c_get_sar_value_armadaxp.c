
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MV_MISC_BASE ;
 int SAMPLE_AT_RESET_HI ;
 int SAMPLE_AT_RESET_LO ;
 int bus_space_read_4 (int ,int ,int ) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static uint64_t
get_sar_value_armadaxp(void)
{
 uint32_t sar_low, sar_high;

 sar_high = bus_space_read_4(fdtbus_bs_tag, MV_MISC_BASE,
     SAMPLE_AT_RESET_HI);
 sar_low = bus_space_read_4(fdtbus_bs_tag, MV_MISC_BASE,
     SAMPLE_AT_RESET_LO);
 return (((uint64_t)sar_high << 32) | sar_low);
}
