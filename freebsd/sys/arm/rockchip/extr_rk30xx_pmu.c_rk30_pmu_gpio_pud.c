
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PMU_GPIO0A_PULL ;
 int pmu_write_4 (int ,int,int) ;
 int rk30_pmu_sc ;

void
rk30_pmu_gpio_pud(uint32_t pin, uint32_t state)
{
 uint32_t offset;

 offset = PMU_GPIO0A_PULL + ((pin / 8) * 4);
 pin = (pin % 8) * 2;
 pmu_write_4(rk30_pmu_sc, offset, (0x3 << (16 + pin)) | (state << pin));
}
