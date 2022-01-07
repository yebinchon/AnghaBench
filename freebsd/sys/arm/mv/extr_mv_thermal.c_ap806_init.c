
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_thermal_softc {int dummy; } ;


 int CONTROL0 ;
 int CONTROL0_OSR_MAX ;
 int CONTROL0_OSR_SHIFT ;
 int CONTROL0_TSEN_EN ;
 int CONTROL0_TSEN_RESET ;
 int CONTROL0_TSEN_START ;
 int RD4 (struct mv_thermal_softc*,int ) ;
 int WR4 (struct mv_thermal_softc*,int ,int) ;
 int mv_thermal_wait_sensor (struct mv_thermal_softc*) ;

__attribute__((used)) static int
ap806_init(struct mv_thermal_softc *sc)
{
 uint32_t reg;


 reg = RD4(sc, CONTROL0);
 reg &= ~CONTROL0_TSEN_RESET;
 reg |= CONTROL0_TSEN_START | CONTROL0_TSEN_EN;


 reg |= CONTROL0_OSR_MAX << CONTROL0_OSR_SHIFT;

 WR4(sc, CONTROL0, reg);


 mv_thermal_wait_sensor(sc);

 return (0);
}
