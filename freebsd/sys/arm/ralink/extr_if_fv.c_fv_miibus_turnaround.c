
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int dummy; } ;


 int MII_WRCMD ;
 int fv_miibus_readbits (struct fv_softc*,int) ;
 int fv_miibus_writebits (struct fv_softc*,int,int) ;

__attribute__((used)) static void
fv_miibus_turnaround(struct fv_softc *sc, int cmd)
{
 if (cmd == MII_WRCMD) {
  fv_miibus_writebits(sc, 0x02, 2);
 } else {
  fv_miibus_readbits(sc, 1);
 }
}
