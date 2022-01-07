
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps65217_status_reg {int off; } ;
typedef scalar_t__ device_t ;


 int RB_POWEROFF ;
 int TPS65217_STATUS_REG ;
 int am335x_pmic_read (scalar_t__,int ,int *,int) ;
 int am335x_pmic_write (scalar_t__,int ,int *,int) ;
 int am335x_rtc_pmic_pwr_toggle () ;

__attribute__((used)) static void
am335x_pmic_shutdown(void *xdev, int howto)
{
 device_t dev;
 struct tps65217_status_reg reg;

 if (!(howto & RB_POWEROFF))
  return;
 dev = (device_t)xdev;
 am335x_pmic_read(dev, TPS65217_STATUS_REG, (uint8_t *)&reg, 1);

 reg.off = 1;
 am335x_pmic_write(dev, TPS65217_STATUS_REG, (uint8_t *)&reg, 1);

 am335x_rtc_pmic_pwr_toggle();
}
