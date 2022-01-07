
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_pcib_softc {int sc_dev; } ;


 int PCIR_BAR (int) ;
 scalar_t__ bootverbose ;
 int mv_pcib_read_config (int ,int,int,int,int,int) ;
 int mv_pcib_write_config (int ,int,int,int,int,int,int) ;
 int pcib_alloc (struct mv_pcib_softc*,int) ;
 int printf (char*,int,int,int,int,int,int) ;

__attribute__((used)) static int
mv_pcib_init_bar(struct mv_pcib_softc *sc, int bus, int slot, int func,
    int barno)
{
 uint32_t addr, bar;
 int reg, width;

 reg = PCIR_BAR(barno);





 mv_pcib_write_config(sc->sc_dev, bus, slot, func, reg, ~0, 4);
 bar = mv_pcib_read_config(sc->sc_dev, bus, slot, func, reg, 4);
 if (bar == 0)
  return (1);


 width = ((bar & 7) == 4) ? 2 : 1;

 addr = pcib_alloc(sc, bar);
 if (!addr)
  return (-1);

 if (bootverbose)
  printf("PCI %u:%u:%u: reg %x: smask=%08x: addr=%08x\n",
      bus, slot, func, reg, bar, addr);

 mv_pcib_write_config(sc->sc_dev, bus, slot, func, reg, addr, 4);
 if (width == 2)
  mv_pcib_write_config(sc->sc_dev, bus, slot, func, reg + 4,
      0, 4);

 return (width);
}
