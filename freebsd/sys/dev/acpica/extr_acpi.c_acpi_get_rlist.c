
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct acpi_device {struct resource_list ad_rl; } ;
typedef int device_t ;


 struct acpi_device* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
acpi_get_rlist(device_t dev, device_t child)
{
    struct acpi_device *ad;

    ad = device_get_ivars(child);
    return (&ad->ad_rl);
}
