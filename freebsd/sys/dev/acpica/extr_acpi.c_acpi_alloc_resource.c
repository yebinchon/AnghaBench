
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list_entry {int start; int end; int count; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct acpi_device {struct resource_list ad_rl; } ;
typedef int rman_res_t ;
typedef int device_t ;
typedef int ACPI_RESOURCE ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int,int,int,int ) ;
 int RMAN_IS_DEFAULT_RANGE (int,int) ;
 int SYS_RES_IRQ ;
 struct resource* acpi_alloc_sysres (int ,int,int*,int,int,int,int ) ;
 int acpi_config_intr (int ,int *) ;
 int acpi_lookup_irq_resource (int ,int,struct resource*,int *) ;
 struct acpi_device* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 int resource_list_add (struct resource_list*,int,int,int,int,int) ;
 struct resource* resource_list_alloc (struct resource_list*,int ,int ,int,int*,int,int,int,int ) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

__attribute__((used)) static struct resource *
acpi_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{

    ACPI_RESOURCE ares;

    struct acpi_device *ad;
    struct resource_list_entry *rle;
    struct resource_list *rl;
    struct resource *res;
    int isdefault = RMAN_IS_DEFAULT_RANGE(start, end);






    if (bus == device_get_parent(child)) {
 ad = device_get_ivars(child);
 rl = &ad->ad_rl;
 if (!isdefault && resource_list_find(rl, type, *rid) == ((void*)0))
  resource_list_add(rl, type, *rid, start, end, count);
 res = resource_list_alloc(rl, bus, child, type, rid, start, end, count,
     flags);

 if (res != ((void*)0) && type == SYS_RES_IRQ) {
     if (ACPI_SUCCESS(acpi_lookup_irq_resource(child, *rid, res, &ares)))
  acpi_config_intr(child, &ares);
 }
 if (res == ((void*)0) && isdefault) {
     rle = resource_list_find(rl, type, *rid);
     if (rle != ((void*)0)) {
  start = rle->start;
  end = rle->end;
  count = rle->count;
     }
 }
    } else
 res = BUS_ALLOC_RESOURCE(device_get_parent(bus), child, type, rid,
     start, end, count, flags);






    if (res == ((void*)0) && start + count - 1 == end)
 res = acpi_alloc_sysres(child, type, rid, start, end, count, flags);
    return (res);
}
