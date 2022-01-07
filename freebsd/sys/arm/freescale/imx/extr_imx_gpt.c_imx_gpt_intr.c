
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct imx_gpt_softc {scalar_t__ sc_period; TYPE_1__ et; } ;


 int FILTER_HANDLED ;
 int GPT_IR_OF2 ;
 int GPT_IR_OF3 ;
 int IMX_GPT_CNT ;
 int IMX_GPT_OCR2 ;
 int IMX_GPT_SR ;
 int READ4 (struct imx_gpt_softc*,int ) ;
 int WRITE4 (struct imx_gpt_softc*,int ,int) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;

__attribute__((used)) static int
imx_gpt_intr(void *arg)
{
 struct imx_gpt_softc *sc;
 uint32_t status;

 sc = (struct imx_gpt_softc *)arg;

 status = READ4(sc, IMX_GPT_SR);







 WRITE4(sc, IMX_GPT_SR, status);


 if (status & GPT_IR_OF3) {
  if (sc->et.et_active) {
   sc->et.et_event_cb(&sc->et, sc->et.et_arg);
  }
 }


 if (status & GPT_IR_OF2) {
  if (sc->et.et_active)
   sc->et.et_event_cb(&sc->et, sc->et.et_arg);
  if (sc->sc_period != 0)
   WRITE4(sc, IMX_GPT_OCR2, READ4(sc, IMX_GPT_CNT) +
       sc->sc_period);
 }

 return (FILTER_HANDLED);
}
