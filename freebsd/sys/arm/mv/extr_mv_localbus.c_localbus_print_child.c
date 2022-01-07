
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct localbus_devinfo {struct resource_list di_res; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct localbus_devinfo* device_get_ivars (int ) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
localbus_print_child(device_t dev, device_t child)
{
 struct localbus_devinfo *di;
 struct resource_list *rl;
 int rv;

 di = device_get_ivars(child);
 rl = &di->di_res;

 rv = 0;
 rv += bus_print_child_header(dev, child);
 rv += resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
 rv += resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");
 rv += bus_print_child_footer(dev, child);

 return (rv);
}
