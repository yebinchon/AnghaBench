
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_pcib_softc {int sc_dev; } ;


 int ENOMEM ;
 int PCIM_HDRTYPE ;
 int device_printf (int ,char*) ;
 int mv_pcib_init_bar (struct mv_pcib_softc*,int,int,int,int) ;

__attribute__((used)) static int
mv_pcib_init_all_bars(struct mv_pcib_softc *sc, int bus, int slot,
    int func, int hdrtype)
{
 int maxbar, bar, i;

 maxbar = (hdrtype & PCIM_HDRTYPE) ? 0 : 6;
 bar = 0;


 while (bar < maxbar) {
  i = mv_pcib_init_bar(sc, bus, slot, func, bar);
  bar += i;
  if (i < 0) {
   device_printf(sc->sc_dev,
       "PCI IO/Memory space exhausted\n");
   return (ENOMEM);
  }
 }

 return (0);
}
