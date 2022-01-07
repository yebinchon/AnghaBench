
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_thermal_softc {int dummy; } ;


 int CONTROL0 ;
 int CONTROL0_OSR_MAX ;
 int CONTROL0_OSR_SHIFT ;
 int CONTROL1 ;
 int RD4 (struct mv_thermal_softc*,int ) ;
 int WR4 (struct mv_thermal_softc*,int ,int) ;

__attribute__((used)) static int
cp110_init(struct mv_thermal_softc *sc)
{
 uint32_t reg;

 reg = RD4(sc, CONTROL1);
 reg &= (1 << 7);
 reg |= (1 << 8);
 WR4(sc, CONTROL1, reg);


 reg = RD4(sc, CONTROL0);
 reg |= CONTROL0_OSR_MAX << CONTROL0_OSR_SHIFT;
 WR4(sc, CONTROL0, reg);

 return (0);
}
