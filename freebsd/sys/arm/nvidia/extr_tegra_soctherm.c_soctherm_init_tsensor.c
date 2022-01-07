
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tsensor {char* name; scalar_t__ sensor_base; scalar_t__ therm_b; scalar_t__ therm_a; TYPE_1__* cfg; } ;
struct soctherm_softc {int dummy; } ;
struct soctherm_shared_cal {int dummy; } ;
struct TYPE_2__ {int ten_count; int tiddq_en; scalar_t__ tsample; int tall; } ;


 int RD4 (struct soctherm_softc*,scalar_t__) ;
 scalar_t__ TSENSOR_CONFIG0 ;
 int TSENSOR_CONFIG0_STATUS_CLR ;
 int TSENSOR_CONFIG0_STOP ;
 int TSENSOR_CONFIG0_TALL (int ) ;
 scalar_t__ TSENSOR_CONFIG1 ;
 int TSENSOR_CONFIG1_TEMP_ENABLE ;
 int TSENSOR_CONFIG1_TEN_COUNT (int ) ;
 int TSENSOR_CONFIG1_TIDDQ_EN (int ) ;
 int TSENSOR_CONFIG1_TSAMPLE (scalar_t__) ;
 scalar_t__ TSENSOR_CONFIG2 ;
 int TSENSOR_CONFIG2_THERMA (int ) ;
 int TSENSOR_CONFIG2_THERMB (int ) ;
 scalar_t__ TSENSOR_STATUS0 ;
 scalar_t__ TSENSOR_STATUS1 ;
 scalar_t__ TSENSOR_STATUS2 ;
 int WR4 (struct soctherm_softc*,scalar_t__,int) ;
 int printf (char*,char*,int,int,int,int,int,int) ;
 int tsensor_calibration (struct tsensor*,struct soctherm_shared_cal*) ;

__attribute__((used)) static void
soctherm_init_tsensor(struct soctherm_softc *sc, struct tsensor *sensor,
    struct soctherm_shared_cal *shared_cal)
{
 uint32_t val;

 tsensor_calibration(sensor, shared_cal);

 val = RD4(sc, sensor->sensor_base + TSENSOR_CONFIG0);
 val |= TSENSOR_CONFIG0_STOP;
 val |= TSENSOR_CONFIG0_STATUS_CLR;
 WR4(sc, sensor->sensor_base + TSENSOR_CONFIG0, val);

 val = TSENSOR_CONFIG0_TALL(sensor->cfg->tall);
 val |= TSENSOR_CONFIG0_STOP;
 WR4(sc, sensor->sensor_base + TSENSOR_CONFIG0, val);

 val = TSENSOR_CONFIG1_TSAMPLE(sensor->cfg->tsample - 1);
 val |= TSENSOR_CONFIG1_TIDDQ_EN(sensor->cfg->tiddq_en);
 val |= TSENSOR_CONFIG1_TEN_COUNT(sensor->cfg->ten_count);
 val |= TSENSOR_CONFIG1_TEMP_ENABLE;
 WR4(sc, sensor->sensor_base + TSENSOR_CONFIG1, val);

 val = TSENSOR_CONFIG2_THERMA((uint16_t)sensor->therm_a) |
      TSENSOR_CONFIG2_THERMB((uint16_t)sensor->therm_b);
 WR4(sc, sensor->sensor_base + TSENSOR_CONFIG2, val);

 val = RD4(sc, sensor->sensor_base + TSENSOR_CONFIG0);
 val &= ~TSENSOR_CONFIG0_STOP;
 WR4(sc, sensor->sensor_base + TSENSOR_CONFIG0, val);
}
