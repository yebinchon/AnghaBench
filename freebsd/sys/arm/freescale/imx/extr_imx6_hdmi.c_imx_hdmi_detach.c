
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sc_mem_res; int sc_mem_rid; } ;
struct imx_hdmi_softc {TYPE_1__ base; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct imx_hdmi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
imx_hdmi_detach(device_t dev)
{
 struct imx_hdmi_softc *sc;

 sc = device_get_softc(dev);

 if (sc->base.sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->base.sc_mem_rid, sc->base.sc_mem_res);

 return (0);
}
