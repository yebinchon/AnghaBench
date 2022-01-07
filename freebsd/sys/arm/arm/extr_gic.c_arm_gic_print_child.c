
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
arm_gic_print_child(device_t bus, device_t child)
{
 struct resource_list *rl;
 int rv;

 rv = bus_print_child_header(bus, child);

 rl = BUS_GET_RESOURCE_LIST(bus, child);
 if (rl != ((void*)0)) {
  rv += resource_list_print_type(rl, "mem", SYS_RES_MEMORY,
      "%#jx");
  rv += resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");
 }

 rv += bus_print_child_footer(bus, child);

 return (rv);
}
