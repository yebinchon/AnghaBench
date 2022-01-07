
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgamgr_softc {int dummy; } ;


 int FPGAMGR_STAT ;
 int READ4 (struct fpgamgr_softc*,int ) ;
 int STAT_MODE_MASK ;
 int STAT_MODE_SHIFT ;

__attribute__((used)) static int
fpgamgr_state_get(struct fpgamgr_softc *sc)
{
 int reg;

 reg = READ4(sc, FPGAMGR_STAT);
 reg >>= STAT_MODE_SHIFT;
 reg &= STAT_MODE_MASK;

 return reg;
}
