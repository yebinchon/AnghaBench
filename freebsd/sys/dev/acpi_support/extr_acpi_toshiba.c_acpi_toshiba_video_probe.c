
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_toshiba_video_probe(device_t dev)
{
 static char *vid_ids[] = { "TOS6201", ((void*)0) };
 int rv;

 if (acpi_disabled("toshiba") ||
     device_get_unit(dev) != 0)
  return (ENXIO);

 device_quiet(dev);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, vid_ids, ((void*)0));
 if (rv <= 0)
  device_set_desc(dev, "Toshiba Video");
 return (rv);
}
