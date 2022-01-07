
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_acad_probe(device_t dev)
{
    static char *acad_ids[] = { "ACPI0003", ((void*)0) };
    int rv;

    if (acpi_disabled("acad"))
 return (ENXIO);
    rv = ACPI_ID_PROBE(device_get_parent(dev), dev, acad_ids, ((void*)0));
    if (rv <= 0)
 device_set_desc(dev, "AC Adapter");
    return (rv);
}
