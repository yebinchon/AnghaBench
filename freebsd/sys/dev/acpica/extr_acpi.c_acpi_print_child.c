
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct acpi_device {struct resource_list ad_rl; } ;
typedef int device_t ;


 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 int device_get_flags (int ) ;
 struct acpi_device* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
acpi_print_child(device_t bus, device_t child)
{
    struct acpi_device *adev = device_get_ivars(child);
    struct resource_list *rl = &adev->ad_rl;
    int retval = 0;

    retval += bus_print_child_header(bus, child);
    retval += resource_list_print_type(rl, "port", SYS_RES_IOPORT, "%#jx");
    retval += resource_list_print_type(rl, "iomem", SYS_RES_MEMORY, "%#jx");
    retval += resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");
    retval += resource_list_print_type(rl, "drq", SYS_RES_DRQ, "%jd");
    if (device_get_flags(child))
 retval += printf(" flags %#x", device_get_flags(child));
    retval += bus_print_child_domain(bus, child);
    retval += bus_print_child_footer(bus, child);

    return (retval);
}
