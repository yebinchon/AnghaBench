
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_thermal_softc {TYPE_1__* conf; } ;
struct TYPE_2__ {int (* to_temp ) (int ,int) ;} ;


 int RD4 (struct aw_thermal_softc*,scalar_t__) ;
 scalar_t__ THS_DATA0 ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
aw_thermal_gettemp(struct aw_thermal_softc *sc, int sensor)
{
 uint32_t val;

 val = RD4(sc, THS_DATA0 + (sensor * 4));

 return (sc->conf->to_temp(val, sensor));
}
