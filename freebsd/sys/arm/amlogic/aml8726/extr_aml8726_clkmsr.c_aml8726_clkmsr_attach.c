
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_clkmsr_softc {int dev; int res; } ;
typedef int device_t ;


 int AML_CLKMSR_CLK81 ;
 int ENXIO ;
 int aml8726_clkmsr_clock_frequency (struct aml8726_clkmsr_softc*,int ) ;
 int aml8726_clkmsr_fixup_clk81 (struct aml8726_clkmsr_softc*,int) ;
 int aml8726_clkmsr_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 struct aml8726_clkmsr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
aml8726_clkmsr_attach(device_t dev)
{
 struct aml8726_clkmsr_softc *sc = device_get_softc(dev);
 int freq;

 sc->dev = dev;

 if (bus_alloc_resources(dev, aml8726_clkmsr_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }

 freq = aml8726_clkmsr_clock_frequency(sc, AML_CLKMSR_CLK81);
 device_printf(sc->dev, "bus clock %u MHz\n", freq);

 aml8726_clkmsr_fixup_clk81(sc, freq * 1000000);

 return (0);
}
