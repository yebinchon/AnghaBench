
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_pcib_softc {int sc_io_base; int sc_io_size; int sc_mem_base; int sc_mem_size; int sc_dev; } ;
typedef int bus_addr_t ;


 int PCIR_IOBASEH_1 ;
 int PCIR_IOBASEL_1 ;
 int PCIR_IOLIMITH_1 ;
 int PCIR_IOLIMITL_1 ;
 int PCIR_MEMBASE_1 ;
 int PCIR_MEMLIMIT_1 ;
 int PCIR_PMBASEH_1 ;
 int PCIR_PMBASEL_1 ;
 int PCIR_PMLIMITH_1 ;
 int PCIR_PMLIMITL_1 ;
 int PCIR_SECBUS_1 ;
 int PCI_SLOTMAX ;
 int mv_pcib_init (struct mv_pcib_softc*,int,int ) ;
 int mv_pcib_read_config (int ,int,int,int,int ,int) ;
 int mv_pcib_write_config (int ,int,int,int,int ,int,int) ;

__attribute__((used)) static void
mv_pcib_init_bridge(struct mv_pcib_softc *sc, int bus, int slot, int func)
{
 bus_addr_t io_base, mem_base;
 uint32_t io_limit, mem_limit;
 int secbus;

 io_base = sc->sc_io_base;
 io_limit = io_base + sc->sc_io_size - 1;
 mem_base = sc->sc_mem_base;
 mem_limit = mem_base + sc->sc_mem_size - 1;


 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_IOBASEL_1,
     io_base >> 8, 1);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_IOBASEH_1,
     io_base >> 16, 2);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_IOLIMITL_1,
     io_limit >> 8, 1);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_IOLIMITH_1,
     io_limit >> 16, 2);


 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_MEMBASE_1,
     mem_base >> 16, 2);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_MEMLIMIT_1,
     mem_limit >> 16, 2);


 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_PMBASEL_1,
     0x10, 2);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_PMBASEH_1,
     0x0, 4);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_PMLIMITL_1,
     0xF, 2);
 mv_pcib_write_config(sc->sc_dev, bus, slot, func, PCIR_PMLIMITH_1,
     0x0, 4);

 secbus = mv_pcib_read_config(sc->sc_dev, bus, slot, func,
     PCIR_SECBUS_1, 1);


 mv_pcib_init(sc, secbus, PCI_SLOTMAX);
}
