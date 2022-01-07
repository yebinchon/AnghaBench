
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int AXP2XX_SHUTBAT ;
 int AXP2XX_SHUTBAT_SHUTDOWN ;
 int RB_POWEROFF ;
 int axp2xx_write (scalar_t__,int ,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (scalar_t__,char*) ;

__attribute__((used)) static void
axp2xx_shutdown(void *devp, int howto)
{
 device_t dev;

 if (!(howto & RB_POWEROFF))
  return;
 dev = (device_t)devp;

 if (bootverbose)
  device_printf(dev, "Shutdown AXP2xx\n");

 axp2xx_write(dev, AXP2XX_SHUTBAT, AXP2XX_SHUTBAT_SHUTDOWN);
}
