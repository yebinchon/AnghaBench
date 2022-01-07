
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GRF_GPIO0B_PULL ;
 int grf_write_4 (int ,int,int) ;
 int rk30_grf_sc ;

void
rk30_grf_gpio_pud(uint32_t bank, uint32_t pin, uint32_t state)
{
 uint32_t offset;

 offset = GRF_GPIO0B_PULL - 4 + (bank * 16) + ((pin / 8) * 4);
 pin = (7 - (pin % 8)) * 2;
 grf_write_4(rk30_grf_sc, offset, (0x3 << (16 + pin)) | (state << pin));
}
