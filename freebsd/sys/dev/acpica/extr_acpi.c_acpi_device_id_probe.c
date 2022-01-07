
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef int * ACPI_HANDLE ;


 int ACPI_MATCHHID_HID ;
 int ACPI_MATCHHID_NOMATCH ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 int acpi_MatchHid (int *,char*) ;
 int * acpi_get_handle (int ) ;
 scalar_t__ acpi_get_type (int ) ;

__attribute__((used)) static int
acpi_device_id_probe(device_t bus, device_t dev, char **ids, char **match)
{
    ACPI_HANDLE h;
    ACPI_OBJECT_TYPE t;
    int rv;
    int i;

    h = acpi_get_handle(dev);
    if (ids == ((void*)0) || h == ((void*)0))
 return (ENXIO);
    t = acpi_get_type(dev);
    if (t != ACPI_TYPE_DEVICE && t != ACPI_TYPE_PROCESSOR)
 return (ENXIO);


    for (i = 0; ids[i] != ((void*)0); i++) {
 rv = acpi_MatchHid(h, ids[i]);
 if (rv == ACPI_MATCHHID_NOMATCH)
     continue;

 if (match != ((void*)0)) {
     *match = ids[i];
 }
 return ((rv == ACPI_MATCHHID_HID)?
      BUS_PROBE_DEFAULT : BUS_PROBE_LOW_PRIORITY);
    }
    return (ENXIO);
}
