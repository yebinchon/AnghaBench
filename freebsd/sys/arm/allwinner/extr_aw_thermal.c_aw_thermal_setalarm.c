
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_thermal_softc {TYPE_1__* conf; } ;
struct TYPE_2__ {int (* to_reg ) (int,int) ;} ;


 int ALARM_T_HOT_MASK ;
 int ALARM_T_HOT_SHIFT ;
 int RD4 (struct aw_thermal_softc*,scalar_t__) ;
 scalar_t__ THS_ALARM0_CTRL ;
 int WR4 (struct aw_thermal_softc*,scalar_t__,int) ;
 int stub1 (int,int) ;

__attribute__((used)) static void
aw_thermal_setalarm(struct aw_thermal_softc *sc, int sensor, int temp)
{
 uint32_t val;

 val = RD4(sc, THS_ALARM0_CTRL + (sensor * 4));
 val &= ~(ALARM_T_HOT_MASK << ALARM_T_HOT_SHIFT);
 val |= (sc->conf->to_reg(temp, sensor) << ALARM_T_HOT_SHIFT);
 WR4(sc, THS_ALARM0_CTRL + (sensor * 4), val);
}
