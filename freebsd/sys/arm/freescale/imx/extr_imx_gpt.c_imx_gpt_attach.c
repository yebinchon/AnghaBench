
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {char* et_name; int et_flags; int et_quality; int et_frequency; int et_min_period; int et_max_period; struct imx_gpt_softc* et_priv; int et_stop; int et_start; } ;
struct imx_gpt_softc {int sc_clksrc; int clkfreq; TYPE_3__ et; int * res; int sc_ih; int sc_ioh; int sc_iot; int sc_dev; } ;
typedef int device_t ;
struct TYPE_4__ {int tc_frequency; struct imx_gpt_softc* tc_priv; } ;


 int EINVAL ;
 int ENXIO ;
 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERIODIC ;
 int GPT_CR_24MEN ;






 int GPT_CR_DBGEN ;
 int GPT_CR_DOZEEN ;
 int GPT_CR_EN ;
 int GPT_CR_FRR ;
 int GPT_CR_STOPEN ;
 int GPT_CR_SWR ;
 int GPT_CR_WAITEN ;
 int GPT_IR_ALL ;
 int IMX_GPT_CNT ;
 int IMX_GPT_CR ;
 int IMX_GPT_IR ;
 int IMX_GPT_OCR3 ;
 int IMX_GPT_PR ;
 int IMX_GPT_SR ;
 int INTR_TYPE_CLK ;
 int READ4 (struct imx_gpt_softc*,int ) ;
 int TARGET_FREQUENCY ;
 int WRITE4 (struct imx_gpt_softc*,int ,int) ;
 int arm_set_delay (int ,struct imx_gpt_softc*) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int ,int ,int *,struct imx_gpt_softc*,int *) ;
 struct imx_gpt_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int et_register (TYPE_3__*) ;
 int imx_ccm_ipg_hz () ;
 int imx_gpt_do_delay ;
 int imx_gpt_intr ;
 int imx_gpt_spec ;
 TYPE_1__ imx_gpt_timecounter ;
 int imx_gpt_timer_start ;
 int imx_gpt_timer_stop ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int tc_init (TYPE_1__*) ;

__attribute__((used)) static int
imx_gpt_attach(device_t dev)
{
 struct imx_gpt_softc *sc;
 int ctlreg, err;
 uint32_t basefreq, prescale, setup_ticks, t1, t2;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, imx_gpt_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->sc_dev = dev;
 sc->sc_iot = rman_get_bustag(sc->res[0]);
 sc->sc_ioh = rman_get_bushandle(sc->res[0]);






 sc->sc_clksrc = 130;

 ctlreg = 0;

 switch (sc->sc_clksrc) {
 case 132:
  basefreq = 32768;
  break;
 case 130:
  basefreq = imx_ccm_ipg_hz();
  break;
 case 129:
  basefreq = imx_ccm_ipg_hz() * 2;
  break;
 case 133:
  ctlreg |= GPT_CR_24MEN;
  basefreq = 24000000;
  break;
 case 128:
 case 131:
 default:
  device_printf(dev, "Unsupported clock source '%d'\n",
      sc->sc_clksrc);
  return (EINVAL);
 }







 WRITE4(sc, IMX_GPT_CR, 0);
 WRITE4(sc, IMX_GPT_IR, 0);


 ctlreg |=
     sc->sc_clksrc |
     GPT_CR_FRR |
     GPT_CR_STOPEN |
     GPT_CR_DOZEEN |
     GPT_CR_WAITEN |
     GPT_CR_DBGEN;
 WRITE4(sc, IMX_GPT_CR, ctlreg);
 WRITE4(sc, IMX_GPT_CR, ctlreg | GPT_CR_SWR);
 while (READ4(sc, IMX_GPT_CR) & GPT_CR_SWR)
  continue;


 if (basefreq < TARGET_FREQUENCY) {
  prescale = 0;
  sc->clkfreq = basefreq;
 } else {
  prescale = basefreq / TARGET_FREQUENCY;
  sc->clkfreq = basefreq / prescale;
  prescale -= 1;
 }
 WRITE4(sc, IMX_GPT_PR, prescale);


 WRITE4(sc, IMX_GPT_SR, GPT_IR_ALL);


 WRITE4(sc, IMX_GPT_CR, ctlreg | GPT_CR_EN);

 if (bootverbose)
  device_printf(dev, "Running on %dKHz clock, base freq %uHz CR=0x%08x, PR=0x%08x\n",
      sc->clkfreq / 1000, basefreq, READ4(sc, IMX_GPT_CR), READ4(sc, IMX_GPT_PR));


 err = bus_setup_intr(dev, sc->res[1], INTR_TYPE_CLK, imx_gpt_intr,
     ((void*)0), sc, &sc->sc_ih);
 if (err != 0) {
  bus_release_resources(dev, imx_gpt_spec, sc->res);
  device_printf(dev, "Unable to setup the clock irq handler, "
      "err = %d\n", err);
  return (ENXIO);
 }
 t1 = READ4(sc, IMX_GPT_CNT);
 WRITE4(sc, IMX_GPT_OCR3, 0);
 t2 = READ4(sc, IMX_GPT_CNT);
 setup_ticks = ((t2 - t1 + 1) * 3) / 2;


 sc->et.et_name = "iMXGPT";
 sc->et.et_flags = ET_FLAGS_ONESHOT | ET_FLAGS_PERIODIC;
 sc->et.et_quality = 800;
 sc->et.et_frequency = sc->clkfreq;
 sc->et.et_min_period = ((uint64_t)setup_ticks << 32) / sc->clkfreq;
 sc->et.et_max_period = ((uint64_t)0xfffffffe << 32) / sc->clkfreq;
 sc->et.et_start = imx_gpt_timer_start;
 sc->et.et_stop = imx_gpt_timer_stop;
 sc->et.et_priv = sc;
 et_register(&sc->et);


 imx_gpt_timecounter.tc_frequency = sc->clkfreq;
 imx_gpt_timecounter.tc_priv = sc;
 tc_init(&imx_gpt_timecounter);


 if (device_get_unit(dev) == 0) {
  arm_set_delay(imx_gpt_do_delay, sc);
 }

 return (0);
}
