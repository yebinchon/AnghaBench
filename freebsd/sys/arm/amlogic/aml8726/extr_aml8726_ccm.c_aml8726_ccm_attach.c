
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_ccm_softc {int res; int soc; int dev; } ;
typedef int device_t ;


 int AML_CCM_LOCK_INIT (struct aml8726_ccm_softc*) ;




 int ENXIO ;
 int aml8726_ccm_configure_gates (struct aml8726_ccm_softc*) ;
 int aml8726_ccm_spec ;
 int aml8726_m3_ccm ;
 int aml8726_m6_ccm ;
 int aml8726_m8_ccm ;
 int aml8726_m8b_ccm ;
 int aml8726_soc_hw_rev ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 struct aml8726_ccm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aml8726_ccm_attach(device_t dev)
{
 struct aml8726_ccm_softc *sc = device_get_softc(dev);

 sc->dev = dev;

 switch (aml8726_soc_hw_rev) {
 case 131:
  sc->soc = aml8726_m3_ccm;
  break;
 case 130:
  sc->soc = aml8726_m6_ccm;
  break;
 case 129:
  sc->soc = aml8726_m8_ccm;
  break;
 case 128:
  sc->soc = aml8726_m8b_ccm;
  break;
 default:
  device_printf(dev, "unsupported SoC\n");
  return (ENXIO);

 }

 if (bus_alloc_resources(dev, aml8726_ccm_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }

 AML_CCM_LOCK_INIT(sc);

 return (aml8726_ccm_configure_gates(sc));
}
