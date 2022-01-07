
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx_gpt_softc {int sc_period; int ir_reg; } ;
struct eventtimer {scalar_t__ et_frequency; scalar_t__ et_priv; } ;
typedef int sbintime_t ;


 int EINVAL ;
 int GPT_IR_OF2 ;
 int GPT_IR_OF3 ;
 int IMX_GPT_CNT ;
 int IMX_GPT_IR ;
 int IMX_GPT_OCR2 ;
 int IMX_GPT_OCR3 ;
 int READ4 (struct imx_gpt_softc*,int ) ;
 int WRITE4 (struct imx_gpt_softc*,int ,int) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

__attribute__((used)) static int
imx_gpt_timer_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct imx_gpt_softc *sc;
 uint32_t ticks;

 sc = (struct imx_gpt_softc *)et->et_priv;

 if (period != 0) {
  sc->sc_period = ((uint32_t)et->et_frequency * period) >> 32;

  WRITE4(sc, IMX_GPT_OCR2, READ4(sc, IMX_GPT_CNT) + sc->sc_period);

  sc->ir_reg |= GPT_IR_OF2;
  WRITE4(sc, IMX_GPT_IR, sc->ir_reg);
  return (0);
 } else if (first != 0) {

  if ((sc->ir_reg & GPT_IR_OF3) == 0) {
   sc->ir_reg |= GPT_IR_OF3;
   WRITE4(sc, IMX_GPT_IR, sc->ir_reg);
  }
  ticks = ((uint32_t)et->et_frequency * first) >> 32;

  spinlock_enter();

  WRITE4(sc, IMX_GPT_OCR3, READ4(sc, IMX_GPT_CNT) + ticks);

  spinlock_exit();
  return (0);
 }

 return (EINVAL);
}
