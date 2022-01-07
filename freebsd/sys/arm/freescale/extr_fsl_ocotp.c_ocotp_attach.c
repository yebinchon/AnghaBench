
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct ocotp_softc {int * mem_res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct ocotp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ocotp_detach (int ) ;
 int * ocotp_regs ;
 struct ocotp_softc* ocotp_sc ;
 int ocotp_size ;
 int pmap_unmapdev (int ,int ) ;

__attribute__((used)) static int
ocotp_attach(device_t dev)
{
 struct ocotp_softc *sc;
 int err, rid;

 sc = device_get_softc(dev);
 sc->dev = dev;


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }

 ocotp_sc = sc;


 if (ocotp_regs != ((void*)0))
  pmap_unmapdev((vm_offset_t)ocotp_regs, ocotp_size);

 err = 0;

out:
 if (err != 0)
  ocotp_detach(dev);

 return (err);
}
