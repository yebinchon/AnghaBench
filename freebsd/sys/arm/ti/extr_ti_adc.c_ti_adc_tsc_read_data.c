
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int sc_coord_readouts; int sc_x; int sc_y; int sc_dev; } ;
typedef int data ;


 int ADC_FIFO1COUNT ;
 int ADC_FIFO1DATA ;
 int ADC_FIFO_COUNT_MSK ;
 int ADC_FIFO_DATA_MSK ;
 int ADC_READ4 (struct ti_adc_softc*,int ) ;
 int TI_ADC_LOCK_ASSERT (struct ti_adc_softc*) ;
 int cmp_values ;
 int device_printf (int ,char*,int,int) ;
 int qsort (int*,int,int,int *) ;
 int ti_adc_ev_report (struct ti_adc_softc*) ;

__attribute__((used)) static void
ti_adc_tsc_read_data(struct ti_adc_softc *sc)
{
 int count;
 uint32_t data[16];
 uint32_t x, y;
 int i, start, end;

 TI_ADC_LOCK_ASSERT(sc);


 count = ADC_READ4(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
 if (count == 0)
  return;

 i = 0;
 while (count > 0) {
  data[i++] = ADC_READ4(sc, ADC_FIFO1DATA) & ADC_FIFO_DATA_MSK;
  count = ADC_READ4(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
 }

 if (sc->sc_coord_readouts > 3) {
  start = 1;
  end = sc->sc_coord_readouts - 1;
  qsort(data, sc->sc_coord_readouts,
   sizeof(data[0]), &cmp_values);
  qsort(&data[sc->sc_coord_readouts + 2],
   sc->sc_coord_readouts,
   sizeof(data[0]), &cmp_values);
 }
 else {
  start = 0;
  end = sc->sc_coord_readouts;
 }

 x = y = 0;
 for (i = start; i < end; i++)
  y += data[i];
 y /= (end - start);

 for (i = sc->sc_coord_readouts + 2 + start; i < sc->sc_coord_readouts + 2 + end; i++)
  x += data[i];
 x /= (end - start);
}
