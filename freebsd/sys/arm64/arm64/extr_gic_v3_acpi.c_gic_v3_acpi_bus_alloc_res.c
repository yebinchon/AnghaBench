
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list_entry {int count; int end; int start; } ;
struct resource {int dummy; } ;
struct gic_v3_acpi_devinfo {int di_rl; } ;
typedef int rman_res_t ;
typedef int device_t ;


 scalar_t__ RMAN_IS_DEFAULT_RANGE (int ,int ) ;
 int SYS_RES_MEMORY ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;
 struct gic_v3_acpi_devinfo* device_get_ivars (int ) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;

__attribute__((used)) static struct resource *
gic_v3_acpi_bus_alloc_res(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct gic_v3_acpi_devinfo *di;
 struct resource_list_entry *rle;


 if (type != SYS_RES_MEMORY)
  return (((void*)0));

 if (RMAN_IS_DEFAULT_RANGE(start, end)) {
  if ((di = device_get_ivars(child)) == ((void*)0))
   return (((void*)0));


  rle = resource_list_find(&di->di_rl, type, *rid);
  if (rle == ((void*)0))
   return (((void*)0));

  start = rle->start;
  end = rle->end;
  count = rle->count;
 }

 return (bus_generic_alloc_resource(bus, child, type, rid, start, end,
     count, flags));
}
