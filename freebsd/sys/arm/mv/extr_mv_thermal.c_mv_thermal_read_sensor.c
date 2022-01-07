
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mv_thermal_softc {TYPE_1__* config; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ calib_mul; scalar_t__ calib_add; scalar_t__ calib_div; scalar_t__ signed_value; } ;


 scalar_t__ RD4 (struct mv_thermal_softc*,int ) ;
 int STATUS ;
 scalar_t__ STATUS_TEMP_MASK ;
 scalar_t__ fls (scalar_t__) ;
 scalar_t__ mv_thermal_select_sensor (struct mv_thermal_softc*,int) ;
 scalar_t__ sign_extend (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
mv_thermal_read_sensor(struct mv_thermal_softc *sc, int sensor, int *temp)
{
 uint32_t reg;
 int64_t sample, rv;

 rv = mv_thermal_select_sensor(sc, sensor);
 if (rv != 0)
  return (rv);

 reg = RD4(sc, STATUS) & STATUS_TEMP_MASK;

 if (sc->config->signed_value)
  sample = sign_extend(reg, fls(STATUS_TEMP_MASK) - 1);
 else
  sample = reg;

 *temp = ((sample * sc->config->calib_mul) - sc->config->calib_add) /
  sc->config->calib_div;

 return (0);
}
