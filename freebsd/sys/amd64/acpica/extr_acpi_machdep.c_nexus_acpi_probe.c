
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int acpi_identify () ;

__attribute__((used)) static int
nexus_acpi_probe(device_t dev)
{
 int error;

 error = acpi_identify();
 if (error)
  return (error);

 return (BUS_PROBE_DEFAULT);
}
