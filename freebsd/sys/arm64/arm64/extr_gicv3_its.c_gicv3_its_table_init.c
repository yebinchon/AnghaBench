
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
struct gicv3_its_softc {int sc_its_flags; TYPE_1__* sc_its_ptab; } ;
typedef int device_t ;
struct TYPE_2__ {size_t ptab_size; scalar_t__ ptab_vaddr; } ;


 int ENXIO ;
 int GITS_BASER (int) ;
 int GITS_BASER_CACHE_MASK ;
 int GITS_BASER_CACHE_SHIFT ;
 int GITS_BASER_CACHE_WAWB ;
 size_t GITS_BASER_ESIZE (int) ;
 int GITS_BASER_ESIZE_MASK ;
 size_t GITS_BASER_ESIZE_SHIFT ;
 int GITS_BASER_NUM ;
 int GITS_BASER_PA_MASK ;
 int GITS_BASER_PSZ_16K ;
 int GITS_BASER_PSZ_4K ;
 int GITS_BASER_PSZ_64K ;
 int GITS_BASER_PSZ_MASK ;
 int GITS_BASER_PSZ_SHIFT ;
 int GITS_BASER_SHARE_IS ;
 int GITS_BASER_SHARE_MASK ;
 int GITS_BASER_SHARE_SHIFT ;
 int GITS_BASER_SIZE_MASK ;
 int GITS_BASER_TYPE (int) ;


 int GITS_BASER_TYPE_MASK ;

 int GITS_BASER_TYPE_SHIFT ;

 int GITS_BASER_VALID ;
 int GITS_TYPER ;
 int GITS_TYPER_DEVB (int) ;
 int ITS_FLAGS_ERRATA_CAVIUM_22375 ;
 int M_GICV3_ITS ;
 int M_WAITOK ;
 int M_ZERO ;



 scalar_t__ contigmalloc (size_t,int ,int,int ,unsigned long,int,int ) ;
 int device_printf (int ,char*,int,int,int) ;
 int gic_its_read_8 (struct gicv3_its_softc*,int ) ;
 int gic_its_write_8 (struct gicv3_its_softc*,int ,int) ;
 size_t howmany (size_t,int) ;
 size_t roundup2 (size_t,int) ;
 int vtophys (scalar_t__) ;

__attribute__((used)) static int
gicv3_its_table_init(device_t dev, struct gicv3_its_softc *sc)
{
 vm_offset_t table;
 vm_paddr_t paddr;
 uint64_t cache, reg, share, tmp, type;
 size_t esize, its_tbl_size, nidents, nitspages, npages;
 int i, page_size;
 int devbits;

 if ((sc->sc_its_flags & ITS_FLAGS_ERRATA_CAVIUM_22375) != 0) {
  devbits = 20;
  cache = 0;
 } else {
  devbits = GITS_TYPER_DEVB(gic_its_read_8(sc, GITS_TYPER));
  cache = GITS_BASER_CACHE_WAWB;
 }
 share = GITS_BASER_SHARE_IS;
 page_size = 128;

 for (i = 0; i < GITS_BASER_NUM; i++) {
  reg = gic_its_read_8(sc, GITS_BASER(i));

  type = GITS_BASER_TYPE(reg);

  esize = GITS_BASER_ESIZE(reg);

  switch(type) {
  case 134:
   nidents = (1 << devbits);
   its_tbl_size = esize * nidents;
   its_tbl_size = roundup2(its_tbl_size, 128);
   break;
  case 131:
  case 132:
  case 133:
   its_tbl_size = page_size;
   break;
  default:
   continue;
  }
  npages = howmany(its_tbl_size, 130);


  table = (vm_offset_t)contigmalloc(npages * 130,
      M_GICV3_ITS, M_WAITOK | M_ZERO, 0, (1ul << 48) - 1,
      128, 0);

  sc->sc_its_ptab[i].ptab_vaddr = table;
  sc->sc_its_ptab[i].ptab_size = npages * 130;

  paddr = vtophys(table);

  while (1) {
   nitspages = howmany(its_tbl_size, page_size);


   reg &= ~(GITS_BASER_VALID |
       GITS_BASER_CACHE_MASK | GITS_BASER_TYPE_MASK |
       GITS_BASER_ESIZE_MASK | GITS_BASER_PA_MASK |
       GITS_BASER_SHARE_MASK | GITS_BASER_PSZ_MASK |
       GITS_BASER_SIZE_MASK);

   reg |= GITS_BASER_VALID |
       (cache << GITS_BASER_CACHE_SHIFT) |
       (type << GITS_BASER_TYPE_SHIFT) |
       ((esize - 1) << GITS_BASER_ESIZE_SHIFT) |
       paddr | (share << GITS_BASER_SHARE_SHIFT) |
       (nitspages - 1);

   switch (page_size) {
   case 130:
    reg |=
        GITS_BASER_PSZ_4K << GITS_BASER_PSZ_SHIFT;
    break;
   case 129:
    reg |=
        GITS_BASER_PSZ_16K << GITS_BASER_PSZ_SHIFT;
    break;
   case 128:
    reg |=
        GITS_BASER_PSZ_64K << GITS_BASER_PSZ_SHIFT;
    break;
   }

   gic_its_write_8(sc, GITS_BASER(i), reg);


   tmp = gic_its_read_8(sc, GITS_BASER(i));


   if ((tmp & GITS_BASER_SHARE_MASK) !=
       (reg & GITS_BASER_SHARE_MASK)) {
    share = (tmp & GITS_BASER_SHARE_MASK) >>
        GITS_BASER_SHARE_SHIFT;
    continue;
   }

   if ((tmp & GITS_BASER_PSZ_MASK) !=
       (reg & GITS_BASER_PSZ_MASK)) {
    switch (page_size) {
    case 129:
     page_size = 130;
     continue;
    case 128:
     page_size = 129;
     continue;
    }
   }

   if (tmp != reg) {
    device_printf(dev, "GITS_BASER%d: "
        "unable to be updated: %lx != %lx\n",
        i, reg, tmp);
    return (ENXIO);
   }


   break;
  }
 }

 return (0);
}
