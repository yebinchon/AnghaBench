
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;




 int acpi_rman_io ;
 int acpi_rman_mem ;
 int rman_is_region_manager (struct resource*,int *) ;

__attribute__((used)) static int
acpi_is_resource_managed(int type, struct resource *r)
{


    switch (type) {
    case 129:
 return (rman_is_region_manager(r, &acpi_rman_io));
    case 128:
 return (rman_is_region_manager(r, &acpi_rman_mem));
    }
    return (0);
}
