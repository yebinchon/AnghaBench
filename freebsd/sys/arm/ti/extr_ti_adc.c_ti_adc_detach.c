
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adc_softc {scalar_t__ sc_mem_res; scalar_t__ sc_irq_res; scalar_t__ sc_intrhand; int sc_evdev; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_ADC_LOCK (struct ti_adc_softc*) ;
 int TI_ADC_LOCK_DESTROY (struct ti_adc_softc*) ;
 int TI_ADC_UNLOCK (struct ti_adc_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct ti_adc_softc* device_get_softc (int ) ;
 int evdev_free (int ) ;
 int ti_adc_reset (struct ti_adc_softc*) ;
 int ti_adc_setup (struct ti_adc_softc*) ;

__attribute__((used)) static int
ti_adc_detach(device_t dev)
{
 struct ti_adc_softc *sc;

 sc = device_get_softc(dev);


 TI_ADC_LOCK(sc);
 ti_adc_reset(sc);
 ti_adc_setup(sc);





 TI_ADC_UNLOCK(sc);

 TI_ADC_LOCK_DESTROY(sc);

 if (sc->sc_intrhand)
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intrhand);
 if (sc->sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (bus_generic_detach(dev));
}
