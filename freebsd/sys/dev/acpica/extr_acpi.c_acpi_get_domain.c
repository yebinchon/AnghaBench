
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENOENT ;
 int acpi_parse_pxm (int ) ;
 int bus_generic_get_domain (int ,int ,int*) ;

int
acpi_get_domain(device_t dev, device_t child, int *domain)
{
 int d;

 d = acpi_parse_pxm(child);
 if (d >= 0) {
  *domain = d;
  return (0);
 }
 if (d == -1)
  return (ENOENT);


 return (bus_generic_get_domain(dev, child, domain));
}
