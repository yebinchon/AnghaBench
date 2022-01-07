
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccm_softc {int * mem_res; } ;
typedef int device_t ;


 int CCM_CGPR ;
 int CCM_CGPR_INT_MEM_CLK_LPM ;
 int CCM_CLPCR ;
 int CCM_CLPCR_LPM_MASK ;
 int CCM_CLPCR_LPM_RUN ;
 int ENXIO ;
 int RD4 (struct ccm_softc*,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int WR4 (struct ccm_softc*,int ,int) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int ccm_detach (int ) ;
 int ccm_init_gates (struct ccm_softc*) ;
 struct ccm_softc* ccm_sc ;
 struct ccm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ccm_attach(device_t dev)
{
 struct ccm_softc *sc;
 int err, rid;
 uint32_t reg;

 sc = device_get_softc(dev);
 err = 0;


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }

 ccm_sc = sc;
 reg = RD4(sc, CCM_CGPR);
 reg |= CCM_CGPR_INT_MEM_CLK_LPM;
 WR4(sc, CCM_CGPR, reg);
 reg = RD4(sc, CCM_CLPCR);
 reg = (reg & ~CCM_CLPCR_LPM_MASK) | CCM_CLPCR_LPM_RUN;
 WR4(sc, CCM_CLPCR, reg);

 ccm_init_gates(sc);

 err = 0;

out:

 if (err != 0)
  ccm_detach(dev);

 return (err);
}
