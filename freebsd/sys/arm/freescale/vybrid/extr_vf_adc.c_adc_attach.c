
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc_softc {int ih; int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ADC_CFG ;
 int ADC_GC ;
 int ADC_HC0 ;
 int CFG_MODE_12 ;
 int CFG_MODE_M ;
 int CFG_MODE_S ;
 int ENXIO ;
 int GC_ADCO ;
 int GC_AVGE ;
 int HC_AIEN ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int READ4 (struct adc_softc*,int ) ;
 int WRITE4 (struct adc_softc*,int ,int) ;
 int adc_intr ;
 struct adc_softc* adc_sc ;
 int adc_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct adc_softc*,int *) ;
 struct adc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
adc_attach(device_t dev)
{
 struct adc_softc *sc;
 int err;
 int reg;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, adc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 adc_sc = sc;


 err = bus_setup_intr(dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), adc_intr, sc, &sc->ih);
 if (err) {
  device_printf(dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }


 reg = READ4(sc, ADC_CFG);
 reg &= ~(CFG_MODE_M << CFG_MODE_S);
 reg |= (CFG_MODE_12 << CFG_MODE_S);
 WRITE4(sc, ADC_CFG, reg);


 reg = READ4(sc, ADC_GC);
 reg |= (GC_ADCO | GC_AVGE);
 WRITE4(sc, ADC_GC, reg);


 reg = READ4(sc, ADC_HC0);
 reg &= HC_AIEN;
 WRITE4(sc, ADC_HC0, reg);

 return (0);
}
