
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;





 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int ACPI_VPRINT (scalar_t__,int ,char*,int ) ;
 int acpi_device_get_parent_softc (scalar_t__) ;
 int acpi_dock_device_check (scalar_t__) ;
 int acpi_dock_removal (scalar_t__) ;
 int device_printf (scalar_t__,char*,int ) ;
 int dock ;

__attribute__((used)) static void
acpi_dock_notify_handler(ACPI_HANDLE h, UINT32 notify, void *context)
{
 device_t dev;

 dev = (device_t) context;
 ACPI_VPRINT(dev, acpi_device_get_parent_softc(dev),
      "got notification %#x\n", notify);

 ACPI_SERIAL_BEGIN(dock);
 switch (notify) {
 case 130:
 case 129:
  acpi_dock_device_check(dev);
  break;
 case 128:
  acpi_dock_removal(dev);
  break;
 default:
  device_printf(dev, "unknown notify %#x\n", notify);
  break;
 }
 ACPI_SERIAL_END(dock);
}
