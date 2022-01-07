
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; } ;
struct resource {int dummy; } ;
struct mv_pcib_ctrl_softc {int nranges; TYPE_1__* ranges; } ;
struct mv_pcib_ctrl_devinfo {int di_rl; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ bus; scalar_t__ size; scalar_t__ host; } ;


 scalar_t__ RMAN_IS_DEFAULT_RANGE (scalar_t__,scalar_t__) ;
 int SYS_RES_MEMORY ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct mv_pcib_ctrl_devinfo* device_get_ivars (int ) ;
 struct mv_pcib_ctrl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__,scalar_t__) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;

__attribute__((used)) static struct resource *
mv_pcib_ctrl_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct mv_pcib_ctrl_devinfo *di;
 struct resource_list_entry *rle;
 struct mv_pcib_ctrl_softc *sc;
 int i;

 if (RMAN_IS_DEFAULT_RANGE(start, end)) {

  if ((di = device_get_ivars(child)) == ((void*)0))
   return (((void*)0));
  if (type != SYS_RES_MEMORY)
   return (((void*)0));


  rle = resource_list_find(&di->di_rl, type, *rid);

  if (rle == ((void*)0))
   return (((void*)0));

  start = rle->start;
  end = rle->end;
  count = rle->count;
 }

 sc = device_get_softc(bus);
 if (type == SYS_RES_MEMORY) {

  for (i = 0; i < sc->nranges; i++) {
   if (start >= sc->ranges[i].bus && end <
       sc->ranges[i].bus + sc->ranges[i].size) {
    start -= sc->ranges[i].bus;
    start += sc->ranges[i].host;
    end -= sc->ranges[i].bus;
    end += sc->ranges[i].host;
    break;
   }
  }

  if (i == sc->nranges && sc->nranges != 0) {
   device_printf(bus, "Could not map resource "
       "%#llx-%#llx\n", start, end);
   return (((void*)0));
  }
 }

 return (bus_generic_alloc_resource(bus, child, type, rid, start, end,
     count, flags));
}
