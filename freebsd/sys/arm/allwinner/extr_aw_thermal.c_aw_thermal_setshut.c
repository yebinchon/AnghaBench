
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_thermal_softc {TYPE_1__* conf; } ;
struct TYPE_2__ {int (* to_reg ) (int,int) ;} ;


 int RD4 (struct aw_thermal_softc*,scalar_t__) ;
 int SHUT_T_HOT_MASK ;
 int SHUT_T_HOT_SHIFT ;
 scalar_t__ THS_SHUTDOWN0_CTRL ;
 int WR4 (struct aw_thermal_softc*,scalar_t__,int) ;
 int stub1 (int,int) ;

__attribute__((used)) static void
aw_thermal_setshut(struct aw_thermal_softc *sc, int sensor, int temp)
{
 uint32_t val;

 val = RD4(sc, THS_SHUTDOWN0_CTRL + (sensor * 4));
 val &= ~(SHUT_T_HOT_MASK << SHUT_T_HOT_SHIFT);
 val |= (sc->conf->to_reg(temp, sensor) << SHUT_T_HOT_SHIFT);
 WR4(sc, THS_SHUTDOWN0_CTRL + (sensor * 4), val);
}
