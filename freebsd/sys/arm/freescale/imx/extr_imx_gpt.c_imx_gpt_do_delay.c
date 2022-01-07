
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct imx_gpt_softc {int clkfreq; } ;


 int IMX_GPT_CNT ;
 int READ4 (struct imx_gpt_softc*,int ) ;

__attribute__((used)) static void
imx_gpt_do_delay(int usec, void *arg)
{
 struct imx_gpt_softc *sc = arg;
 uint64_t curcnt, endcnt, startcnt, ticks;
 ticks = 1 + ((uint64_t)usec * sc->clkfreq) / 1000000;
 curcnt = startcnt = READ4(sc, IMX_GPT_CNT);
 endcnt = startcnt + ticks;
 while (curcnt < endcnt) {
  curcnt = READ4(sc, IMX_GPT_CNT);
  if (curcnt < startcnt)
   curcnt += 1ULL << 32;
 }
}
