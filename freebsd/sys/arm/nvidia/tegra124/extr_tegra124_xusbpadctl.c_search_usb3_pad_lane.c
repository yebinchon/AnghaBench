
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct padctl_softc {int dev; } ;
struct padctl_lane {size_t mux_idx; int name; int * mux; } ;
struct TYPE_3__ {int port_idx; int lane_idx; int pad_type; } ;


 int device_printf (int ,char*,int ,int ) ;
 TYPE_1__* lane_map_tbl ;
 int nitems (TYPE_1__*) ;
 struct padctl_lane* search_pad_lane (struct padctl_softc*,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct padctl_lane *
search_usb3_pad_lane(struct padctl_softc *sc, int idx)
{
 int i;
 struct padctl_lane *lane, *tmp;

 lane = ((void*)0);
 for (i = 0; i < nitems(lane_map_tbl); i++) {
  if (idx != lane_map_tbl[i].port_idx)
   continue;
  tmp = search_pad_lane(sc, lane_map_tbl[i].pad_type,
      lane_map_tbl[i].lane_idx);
  if (tmp == ((void*)0))
   continue;
  if (strcmp(tmp->mux[tmp->mux_idx], "usb3-ss") != 0)
   continue;
  if (lane != ((void*)0)) {
   device_printf(sc->dev, "Duplicated mappings found for"
    " lanes: %s and %s\n", lane->name, tmp->name);
   return (((void*)0));
  }
  lane = tmp;
 }
 return (lane);
}
