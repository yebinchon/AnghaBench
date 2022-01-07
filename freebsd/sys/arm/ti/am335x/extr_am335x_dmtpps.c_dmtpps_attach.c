
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct make_dev_args {int mda_mode; struct dmtpps_softc* mda_si_drv1; int mda_unit; int mda_gid; int mda_uid; int * mda_cr; int * mda_devsw; int mda_flags; } ;
struct TYPE_4__ {int * driver_mtx; int driver_abi; int ppscap; int flags; } ;
struct TYPE_3__ {unsigned int tc_counter_mask; int tc_frequency; int tc_quality; struct dmtpps_softc* tc_priv; int tc_get_timecount; int tc_name; } ;
struct dmtpps_softc {int tmr_num; int tclr; int tmr_name; int dev; int pps_cdev; TYPE_2__ pps_state; int pps_mtx; TYPE_1__ tc; int * mem_res; int mem_rid; } ;
typedef int device_t ;
typedef int clk_ident_t ;


 int DMTIMER_READ4 (struct dmtpps_softc*,int ) ;
 int DMTIMER_WRITE4 (struct dmtpps_softc*,int ,int) ;
 int DMT_TCLR ;
 int DMT_TCLR_AUTOLOAD ;
 int DMT_TCLR_GPO_CFG ;
 int DMT_TCLR_START ;
 int DMT_TCRR ;
 int DMT_TIOCP_CFG ;
 int DMT_TIOCP_RESET ;
 int DMT_TLDR ;
 int DMT_TSICR ;
 int DMT_TSICR_RESET ;
 int ENXIO ;
 int GID_WHEEL ;
 int INVALID_CLK_IDENT ;
 int MAKEDEV_WAITOK ;
 int MTX_SPIN ;
 int PPSFLAG_MTX_SPIN ;
 int PPS_ABI_VERSION ;
 int PPS_CAPTUREASSERT ;
 int PPS_CDEV_NAME ;
 int RF_ACTIVE ;
 int SYSCLK_CLK ;
 int SYS_CLK ;
 int SYS_RES_MEMORY ;
 int UID_ROOT ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct dmtpps_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ,...) ;
 int dmtpps_cdevsw ;
 int dmtpps_get_timecount ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pps_init_abi (TYPE_2__*) ;
 int snprintf (int ,int,char*,int) ;
 int tc_init (TYPE_1__*) ;
 int ti_hwmods_get_clock (int ) ;
 int ti_hwmods_get_unit (int ,char*) ;
 int ti_prcm_clk_enable (int ) ;
 int ti_prcm_clk_get_source_freq (int ,int*) ;
 int ti_prcm_clk_set_source (int ,int ) ;

__attribute__((used)) static int
dmtpps_attach(device_t dev)
{
 struct dmtpps_softc *sc;
 struct make_dev_args mda;
 clk_ident_t timer_id;
 int err, sysclk_freq;

 sc = device_get_softc(dev);
 sc->dev = dev;


 err = ti_prcm_clk_get_source_freq(SYS_CLK, &sysclk_freq);


 if ((timer_id = ti_hwmods_get_clock(dev)) == INVALID_CLK_IDENT)
  return (ENXIO);
 if ((err = ti_prcm_clk_set_source(timer_id, SYSCLK_CLK)) != 0)
  return (err);
 if ((err = ti_prcm_clk_enable(timer_id)) != 0)
  return (err);


 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->mem_rid, RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  return (ENXIO);
 }


 sc->tmr_num = ti_hwmods_get_unit(dev, "timer");
 snprintf(sc->tmr_name, sizeof(sc->tmr_name), "DMTimer%d", sc->tmr_num);






 sc->tclr = DMT_TCLR_GPO_CFG;
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);


 DMTIMER_WRITE4(sc, DMT_TSICR, DMT_TSICR_RESET);
 while (DMTIMER_READ4(sc, DMT_TIOCP_CFG) & DMT_TIOCP_RESET)
  continue;

 sc->tclr |= DMT_TCLR_START | DMT_TCLR_AUTOLOAD;
 DMTIMER_WRITE4(sc, DMT_TLDR, 0);
 DMTIMER_WRITE4(sc, DMT_TCRR, 0);
 DMTIMER_WRITE4(sc, DMT_TCLR, sc->tclr);


 sc->tc.tc_name = sc->tmr_name;
 sc->tc.tc_get_timecount = dmtpps_get_timecount;
 sc->tc.tc_counter_mask = ~0u;
 sc->tc.tc_frequency = sysclk_freq;
 sc->tc.tc_quality = 1000;
 sc->tc.tc_priv = sc;

 tc_init(&sc->tc);
 mtx_init(&sc->pps_mtx, "dmtpps", ((void*)0), MTX_SPIN);
 sc->pps_state.flags = PPSFLAG_MTX_SPIN;
 sc->pps_state.ppscap = PPS_CAPTUREASSERT;
 sc->pps_state.driver_abi = PPS_ABI_VERSION;
 sc->pps_state.driver_mtx = &sc->pps_mtx;
 pps_init_abi(&sc->pps_state);


 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_WAITOK;
 mda.mda_devsw = &dmtpps_cdevsw;
 mda.mda_cr = ((void*)0);
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_WHEEL;
 mda.mda_mode = 0600;
 mda.mda_unit = device_get_unit(dev);
 mda.mda_si_drv1 = sc;
 if ((err = make_dev_s(&mda, &sc->pps_cdev, PPS_CDEV_NAME)) != 0) {
  device_printf(dev, "Failed to create cdev %s\n", PPS_CDEV_NAME);
  return (err);
 }

 if (bootverbose)
  device_printf(sc->dev, "Using %s for PPS device /dev/%s\n",
      sc->tmr_name, PPS_CDEV_NAME);

 return (0);
}
