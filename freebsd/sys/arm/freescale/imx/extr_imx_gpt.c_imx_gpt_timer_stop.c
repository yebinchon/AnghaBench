
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_gpt_softc {int ir_reg; scalar_t__ sc_period; } ;
struct eventtimer {scalar_t__ et_priv; } ;


 int GPT_IR_OF2 ;
 int GPT_IR_OF3 ;
 int IMX_GPT_IR ;
 int IMX_GPT_SR ;
 int WRITE4 (struct imx_gpt_softc*,int ,int) ;

__attribute__((used)) static int
imx_gpt_timer_stop(struct eventtimer *et)
{
 struct imx_gpt_softc *sc;

 sc = (struct imx_gpt_softc *)et->et_priv;


 sc->ir_reg &= ~(GPT_IR_OF2 | GPT_IR_OF3);
 WRITE4(sc, IMX_GPT_IR, sc->ir_reg);
 WRITE4(sc, IMX_GPT_SR, GPT_IR_OF2 | GPT_IR_OF3);
 sc->sc_period = 0;

 return (0);
}
