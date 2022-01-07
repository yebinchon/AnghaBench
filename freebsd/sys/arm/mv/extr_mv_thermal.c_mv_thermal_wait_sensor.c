
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mv_thermal_softc {TYPE_1__* config; } ;
struct TYPE_2__ {int valid_mask; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int RD4 (struct mv_thermal_softc*,int ) ;
 int STATUS ;

__attribute__((used)) static int
mv_thermal_wait_sensor(struct mv_thermal_softc *sc)
{
 uint32_t reg;
 uint32_t timeout;

 timeout = 100000;
 while (--timeout > 0) {
  reg = RD4(sc, STATUS);
  if ((reg & sc->config->valid_mask) == sc->config->valid_mask)
   break;
  DELAY(100);
 }
 if (timeout == 0) {
  return (ETIMEDOUT);
 }

 return (0);
}
