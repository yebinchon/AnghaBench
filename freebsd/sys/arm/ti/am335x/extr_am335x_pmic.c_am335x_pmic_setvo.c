
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps65217_chgconfig2_reg {int voreg; } ;
typedef int device_t ;


 int TPS65217_CHGCONFIG2_REG ;
 int am335x_pmic_read (int ,int ,int *,int) ;
 int am335x_pmic_write (int ,int ,int *,int) ;

__attribute__((used)) static void
am335x_pmic_setvo(device_t dev, uint8_t vo)
{
 struct tps65217_chgconfig2_reg reg2;

 am335x_pmic_read(dev, TPS65217_CHGCONFIG2_REG, (uint8_t *)&reg2, 1);
 reg2.voreg = vo;
 am335x_pmic_write(dev, TPS65217_CHGCONFIG2_REG, (uint8_t *)&reg2, 1);
}
