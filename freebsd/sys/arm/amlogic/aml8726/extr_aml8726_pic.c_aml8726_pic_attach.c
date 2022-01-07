
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_pic_softc {int res; int dev; } ;
typedef int device_t ;


 scalar_t__ AML_PIC_0_FIRQ_SEL ;
 scalar_t__ AML_PIC_0_MASK_REG ;
 scalar_t__ AML_PIC_0_STAT_CLR_REG ;
 int AML_PIC_NCNTRLS ;
 int CSR_WRITE_4 (struct aml8726_pic_softc*,scalar_t__,unsigned int) ;
 int ENXIO ;
 int aml8726_pic_eoi ;
 struct aml8726_pic_softc* aml8726_pic_sc ;
 int aml8726_pic_spec ;
 int arm_post_filter ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 struct aml8726_pic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aml8726_pic_attach(device_t dev)
{
 struct aml8726_pic_softc *sc = device_get_softc(dev);
 int i;


 if (aml8726_pic_sc != ((void*)0))
  return (ENXIO);

 sc->dev = dev;

 if (bus_alloc_resources(dev, aml8726_pic_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }




 for (i = 0; i < AML_PIC_NCNTRLS; i++) {
  CSR_WRITE_4(sc, AML_PIC_0_MASK_REG + i * 16, 0);
  CSR_WRITE_4(sc, AML_PIC_0_STAT_CLR_REG + i * 16, ~0u);
  CSR_WRITE_4(sc, AML_PIC_0_FIRQ_SEL + i * 16, 0);
 }


 arm_post_filter = aml8726_pic_eoi;




 aml8726_pic_sc = sc;

 return (0);
}
