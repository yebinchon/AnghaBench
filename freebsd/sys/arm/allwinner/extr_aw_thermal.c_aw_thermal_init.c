
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_thermal_softc {TYPE_1__* conf; int dev; } ;
typedef int phandle_t ;
typedef int calib ;
struct TYPE_2__ {int calib0_mask; int calib1_mask; int adc_acquire_time; int thermal_per; int filter; } ;


 int ADC_CALI_EN ;
 int ALARM_INT_ALL ;
 int ENXIO ;
 int RD4 (struct aw_thermal_softc*,int ) ;
 int SENSOR_ACQ1_SHIFT ;
 int SENSOR_ENABLE_ALL ;
 int SHUT_INT_ALL ;
 int THS_CALIB0 ;
 int THS_CALIB1 ;
 int THS_CTRL0 ;
 int THS_CTRL1 ;
 int THS_CTRL2 ;
 int THS_FILTER ;
 int THS_INTC ;
 int THS_INTS ;
 int THS_THERMAL_PER_SHIFT ;
 int WR4 (struct aw_thermal_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int nvmem_get_cell_len (int ,char*) ;
 int nvmem_read_cell_by_name (int ,char*,void*,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
aw_thermal_init(struct aw_thermal_softc *sc)
{
 phandle_t node;
 uint32_t calib[2];
 int error;

 node = ofw_bus_get_node(sc->dev);
 if (nvmem_get_cell_len(node, "ths-calib") > sizeof(calib)) {
  device_printf(sc->dev, "ths-calib nvmem cell is too large\n");
  return (ENXIO);
 }
 error = nvmem_read_cell_by_name(node, "ths-calib",
     (void *)&calib, nvmem_get_cell_len(node, "ths-calib"));

 if (error != 0) {
  device_printf(sc->dev, "Cannot read THS efuse\n");
  return (error);
 }

 calib[0] &= sc->conf->calib0_mask;
 calib[1] &= sc->conf->calib1_mask;


 if (calib[0] != 0)
  WR4(sc, THS_CALIB0, calib[0]);
 if (calib[1] != 0)
  WR4(sc, THS_CALIB1, calib[1]);


 WR4(sc, THS_CTRL1, ADC_CALI_EN);
 WR4(sc, THS_CTRL0, sc->conf->adc_acquire_time);
 WR4(sc, THS_CTRL2, sc->conf->adc_acquire_time << SENSOR_ACQ1_SHIFT);


 WR4(sc, THS_INTC, sc->conf->thermal_per << THS_THERMAL_PER_SHIFT);


 WR4(sc, THS_FILTER, sc->conf->filter);


 WR4(sc, THS_INTS, RD4(sc, THS_INTS));
 WR4(sc, THS_INTC, RD4(sc, THS_INTC) | SHUT_INT_ALL | ALARM_INT_ALL);


 WR4(sc, THS_CTRL2, RD4(sc, THS_CTRL2) | SENSOR_ENABLE_ALL);

 return (0);
}
