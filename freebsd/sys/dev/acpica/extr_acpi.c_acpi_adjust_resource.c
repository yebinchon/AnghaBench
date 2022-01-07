
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 scalar_t__ acpi_is_resource_managed (int,struct resource*) ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;

__attribute__((used)) static int
acpi_adjust_resource(device_t bus, device_t child, int type, struct resource *r,
    rman_res_t start, rman_res_t end)
{

    if (acpi_is_resource_managed(type, r))
 return (rman_adjust_resource(r, start, end));
    return (bus_generic_adjust_resource(bus, child, type, r, start, end));
}
