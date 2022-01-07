
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int device_t ;


 struct resource_list* acpi_get_rlist (int ,int ) ;
 int device_printf (int ,char*,int,int) ;
 scalar_t__ resource_list_busy (struct resource_list*,int,int) ;
 int resource_list_delete (struct resource_list*,int,int) ;
 int resource_list_unreserve (struct resource_list*,int ,int ,int,int) ;

__attribute__((used)) static void
acpi_delete_resource(device_t bus, device_t child, int type, int rid)
{
    struct resource_list *rl;

    rl = acpi_get_rlist(bus, child);
    if (resource_list_busy(rl, type, rid)) {
 device_printf(bus, "delete_resource: Resource still owned by child"
     " (type=%d, rid=%d)\n", type, rid);
 return;
    }
    resource_list_unreserve(rl, bus, child, type, rid);
    resource_list_delete(rl, type, rid);
}
