
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_dmtimer_softc {int tmr_num; int tmr_name; int * tmr_mem_res; int tmr_mem_rid; int sysclk_freq; int dev; } ;
typedef int device_t ;
typedef int clk_ident_t ;


 int ENXIO ;
 scalar_t__ ET_TMR_NUM ;
 int INVALID_CLK_IDENT ;
 int RF_ACTIVE ;
 int SYSCLK_CLK ;
 int SYS_CLK ;
 int SYS_RES_MEMORY ;
 scalar_t__ TC_TMR_NUM ;
 int am335x_dmtimer_et_init (struct am335x_dmtimer_softc*) ;
 int am335x_dmtimer_tc_init (struct am335x_dmtimer_softc*) ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct am335x_dmtimer_softc* device_get_softc (int ) ;
 int panic (char*,scalar_t__) ;
 int snprintf (int ,int,char*,int) ;
 int ti_hwmods_get_clock (int ) ;
 int ti_hwmods_get_unit (int ,char*) ;
 int ti_prcm_clk_enable (int ) ;
 int ti_prcm_clk_get_source_freq (int ,int *) ;
 int ti_prcm_clk_set_source (int ,int ) ;

__attribute__((used)) static int
am335x_dmtimer_attach(device_t dev)
{
 struct am335x_dmtimer_softc *sc;
 clk_ident_t timer_id;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;


 if ((err = ti_prcm_clk_get_source_freq(SYS_CLK, &sc->sysclk_freq)) != 0)
  return (err);


 if ((timer_id = ti_hwmods_get_clock(dev)) == INVALID_CLK_IDENT)
  return (ENXIO);
 if ((err = ti_prcm_clk_set_source(timer_id, SYSCLK_CLK)) != 0)
  return (err);
 if ((err = ti_prcm_clk_enable(timer_id)) != 0)
  return (err);


 sc->tmr_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->tmr_mem_rid, RF_ACTIVE);
 if (sc->tmr_mem_res == ((void*)0)) {
  return (ENXIO);
 }

 sc->tmr_num = ti_hwmods_get_unit(dev, "timer");
 snprintf(sc->tmr_name, sizeof(sc->tmr_name), "DMTimer%d", sc->tmr_num);





 if (sc->tmr_num == ET_TMR_NUM)
  am335x_dmtimer_et_init(sc);
 else if (sc->tmr_num == TC_TMR_NUM)
  am335x_dmtimer_tc_init(sc);
 else
  panic("am335x_dmtimer: bad timer number %d", sc->tmr_num);

 return (0);
}
