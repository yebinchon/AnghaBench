
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_thermal_softc {int cur_sensor; } ;


 int CONTROL0 ;
 int CONTROL0_CHANNEL_MASK ;
 int CONTROL0_CHANNEL_SHIFT ;
 int CONTROL0_MODE_EXTERNAL ;
 int CONTROL0_MODE_MASK ;
 int CONTROL0_MODE_SHIFT ;
 int CONTROL0_TSEN_EN ;
 int CONTROL0_TSEN_START ;
 int RD4 (struct mv_thermal_softc*,int ) ;
 int WR4 (struct mv_thermal_softc*,int ,int) ;
 int mv_thermal_wait_sensor (struct mv_thermal_softc*) ;

__attribute__((used)) static int
mv_thermal_select_sensor(struct mv_thermal_softc *sc, int sensor)
{
 uint32_t reg;

 if (sc->cur_sensor == sensor)
  return (0);


 reg = RD4(sc, CONTROL0);
 reg &= ~(CONTROL0_TSEN_START | CONTROL0_TSEN_EN);
 WR4(sc, CONTROL0, reg);
 reg &= ~(CONTROL0_MODE_MASK << CONTROL0_MODE_SHIFT);
 if (sensor) {

  reg |= CONTROL0_MODE_EXTERNAL << CONTROL0_MODE_SHIFT;
  reg &= ~(CONTROL0_CHANNEL_MASK << CONTROL0_CHANNEL_SHIFT);
  reg |= (sensor - 1) << CONTROL0_CHANNEL_SHIFT;
 }
 WR4(sc, CONTROL0, reg);
 sc->cur_sensor = sensor;


 reg = RD4(sc, CONTROL0);
 reg |= CONTROL0_TSEN_START | CONTROL0_TSEN_EN;
 WR4(sc, CONTROL0, reg);

 return (mv_thermal_wait_sensor(sc));
}
