
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_softc {int dummy; } ;


 int READ4 (struct sdma_softc*,int ) ;
 int SDMAARM_DSPOVR ;
 int SDMAARM_EVTOVR ;
 int SDMAARM_HOSTOVR ;
 int WRITE4 (struct sdma_softc*,int ,int) ;

__attribute__((used)) static int
sdma_overrides(struct sdma_softc *sc, int chn,
  int evt, int host, int dsp)
{
 int reg;


 reg = READ4(sc, SDMAARM_EVTOVR);
 if (evt)
  reg |= (1 << chn);
 else
  reg &= ~(1 << chn);
 WRITE4(sc, SDMAARM_EVTOVR, reg);


 reg = READ4(sc, SDMAARM_HOSTOVR);
 if (host)
  reg |= (1 << chn);
 else
  reg &= ~(1 << chn);
 WRITE4(sc, SDMAARM_HOSTOVR, reg);


 reg = READ4(sc, SDMAARM_DSPOVR);
 if (!dsp)
  reg |= (1 << chn);
 else
  reg &= ~(1 << chn);
 WRITE4(sc, SDMAARM_DSPOVR, reg);

 return (0);
}
