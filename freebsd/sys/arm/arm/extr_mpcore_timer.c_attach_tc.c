
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct arm_tmr_softc {int memrid; int clkfreq; int dev; int * gbl_mem; } ;
struct TYPE_4__ {struct arm_tmr_softc* tc_priv; int tc_frequency; } ;


 int EBUSY ;
 int ENXIO ;
 int GBL_TIMER_CTRL ;
 int GBL_TIMER_CTRL_TIMER_ENABLE ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 TYPE_1__* arm_tmr_tc ;
 TYPE_1__ arm_tmr_timecount ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 int tc_init (TYPE_1__*) ;
 int tmr_gbl_write_4 (struct arm_tmr_softc*,int ,int) ;

__attribute__((used)) static int
attach_tc(struct arm_tmr_softc *sc)
{
 int rid;

 if (arm_tmr_tc != ((void*)0))
  return (EBUSY);

 rid = sc->memrid;
 sc->gbl_mem = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->gbl_mem == ((void*)0)) {
  device_printf(sc->dev, "could not allocate gbl mem resources\n");
  return (ENXIO);
 }
 tmr_gbl_write_4(sc, GBL_TIMER_CTRL, 0x00000000);

 arm_tmr_timecount.tc_frequency = sc->clkfreq;
 arm_tmr_timecount.tc_priv = sc;
 tc_init(&arm_tmr_timecount);
 arm_tmr_tc = &arm_tmr_timecount;

 tmr_gbl_write_4(sc, GBL_TIMER_CTRL, GBL_TIMER_CTRL_TIMER_ENABLE);

 return (0);
}
