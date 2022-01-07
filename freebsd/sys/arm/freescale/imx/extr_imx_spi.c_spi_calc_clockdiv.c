
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct spi_softc {int basefreq; int debug; int dev; } ;


 int CTLREG_POSTDIV_SHIFT ;
 int CTLREG_PREDIV_SHIFT ;
 int device_printf (int ,char*,int,int,int,int,int) ;

__attribute__((used)) static u_int
spi_calc_clockdiv(struct spi_softc *sc, u_int busfreq)
{
 u_int post, pre;


 if (sc->basefreq <= busfreq)
  return (0);





 for (post = 0; post < 16; ++post) {
  pre = ((sc->basefreq >> post) / busfreq) - 1;
  if (pre < 16)
   break;
 }
 if (post == 16) {

  pre = 15;
  post = 15;
 }

 if (sc->debug >= 2) {
  device_printf(sc->dev,
      "base %u bus %u; pre %u, post %u; actual busfreq %u\n",
      sc->basefreq, busfreq, pre, post,
      (sc->basefreq / (pre + 1)) / (1 << post));
 }

 return (pre << CTLREG_PREDIV_SHIFT) | (post << CTLREG_POSTDIV_SHIFT);
}
