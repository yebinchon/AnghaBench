
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nregions; int * regions; int ** pcpu; } ;
struct gic_v3_softc {TYPE_1__ gic_redists; int * gic_res; scalar_t__ gic_registered; } ;
typedef int device_t ;


 int M_GIC_V3 ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,int ) ;
 struct gic_v3_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int free (int *,int ) ;
 size_t mp_maxid ;
 int panic (char*) ;

int
gic_v3_detach(device_t dev)
{
 struct gic_v3_softc *sc;
 size_t i;
 int rid;

 sc = device_get_softc(dev);

 if (device_is_attached(dev)) {



  if (sc->gic_registered)
   panic("Trying to detach registered PIC");
 }
 for (rid = 0; rid < (sc->gic_redists.nregions + 1); rid++)
  bus_release_resource(dev, SYS_RES_MEMORY, rid, sc->gic_res[rid]);

 for (i = 0; i <= mp_maxid; i++)
  free(sc->gic_redists.pcpu[i], M_GIC_V3);

 free(sc->gic_res, M_GIC_V3);
 free(sc->gic_redists.regions, M_GIC_V3);

 return (0);
}
