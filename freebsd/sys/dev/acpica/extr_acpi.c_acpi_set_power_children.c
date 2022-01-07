
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_TEMP ;
 scalar_t__ acpi_device_pwr_for_sleep (int ,int ,int*) ;
 int acpi_set_powerstate (int ,int) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 scalar_t__ device_is_attached (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static void
acpi_set_power_children(device_t dev, int state)
{
 device_t child;
 device_t *devlist;
 int dstate, i, numdevs;

 if (device_get_children(dev, &devlist, &numdevs) != 0)
  return;





 for (i = 0; i < numdevs; i++) {
  child = devlist[i];
  dstate = state;
  if (device_is_attached(child) &&
      acpi_device_pwr_for_sleep(dev, child, &dstate) == 0)
   acpi_set_powerstate(child, dstate);
 }
 free(devlist, M_TEMP);
}
