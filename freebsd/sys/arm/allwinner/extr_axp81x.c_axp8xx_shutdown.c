
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* device_t ;


 int AXP_POWERBAT ;
 int AXP_POWERBAT_SHUTDOWN ;
 int RB_POWEROFF ;
 int axp8xx_write (void*,int ,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (void*,char*) ;

__attribute__((used)) static void
axp8xx_shutdown(void *devp, int howto)
{
 device_t dev;

 if ((howto & RB_POWEROFF) == 0)
  return;

 dev = devp;

 if (bootverbose)
  device_printf(dev, "Shutdown Axp8xx\n");

 axp8xx_write(dev, AXP_POWERBAT, AXP_POWERBAT_SHUTDOWN);
}
