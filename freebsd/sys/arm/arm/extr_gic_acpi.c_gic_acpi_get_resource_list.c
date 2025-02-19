
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct gic_acpi_devinfo {struct resource_list rl; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 struct gic_acpi_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
gic_acpi_get_resource_list(device_t bus, device_t child)
{
 struct gic_acpi_devinfo *di;

 di = device_get_ivars(child);
 KASSERT(di != ((void*)0), ("gic_acpi_get_resource_list: No devinfo"));

 return (&di->rl);
}
