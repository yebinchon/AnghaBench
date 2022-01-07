
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_softc {int dummy; } ;


 int SDMAARM_HSTART ;
 int WRITE4 (struct sdma_softc*,int ,int) ;
 struct sdma_softc* sdma_sc ;

int
sdma_start(int chn)
{
 struct sdma_softc *sc;

 sc = sdma_sc;

 WRITE4(sc, SDMAARM_HSTART, (1 << chn));

 return (0);
}
