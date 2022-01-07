
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct gic_v3_ofw_devinfo {struct resource_list di_rl; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct gic_v3_ofw_devinfo* device_get_ivars (int ) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
gic_v3_fdt_print_child(device_t bus, device_t child)
{
 struct gic_v3_ofw_devinfo *di = device_get_ivars(child);
 struct resource_list *rl = &di->di_rl;
 int retval = 0;

 retval += bus_print_child_header(bus, child);
 retval += resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
 retval += bus_print_child_footer(bus, child);

 return (retval);
}
