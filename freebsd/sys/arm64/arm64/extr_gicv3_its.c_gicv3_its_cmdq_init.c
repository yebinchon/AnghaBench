
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;
struct gicv3_its_softc {int sc_its_flags; int sc_its_cmd_base; scalar_t__ sc_its_cmd_next_idx; } ;


 int GITS_CBASER ;
 int GITS_CBASER_CACHE_MASK ;
 int GITS_CBASER_CACHE_NIN ;
 int GITS_CBASER_CACHE_NIWAWB ;
 int GITS_CBASER_CACHE_SHIFT ;
 int GITS_CBASER_SHARE_IS ;
 int GITS_CBASER_SHARE_MASK ;
 int GITS_CBASER_SHARE_NS ;
 int GITS_CBASER_SHARE_SHIFT ;
 int GITS_CBASER_VALID ;
 int GITS_CWRITER ;
 int ITS_CMDQ_ALIGN ;
 int ITS_CMDQ_SIZE ;
 int ITS_FLAGS_CMDQ_FLUSH ;
 int M_GICV3_ITS ;
 int M_WAITOK ;
 int M_ZERO ;
 int contigmalloc (int,int ,int,int ,unsigned long,int ,int ) ;
 int gic_its_read_8 (struct gicv3_its_softc*,int ) ;
 int gic_its_write_8 (struct gicv3_its_softc*,int ,int) ;
 int vtophys (int ) ;

__attribute__((used)) static void
gicv3_its_cmdq_init(struct gicv3_its_softc *sc)
{
 vm_paddr_t cmd_paddr;
 uint64_t reg, tmp;


 sc->sc_its_cmd_base = contigmalloc(ITS_CMDQ_SIZE, M_GICV3_ITS,
     M_WAITOK | M_ZERO, 0, (1ul << 48) - 1, ITS_CMDQ_ALIGN, 0);
 sc->sc_its_cmd_next_idx = 0;

 cmd_paddr = vtophys(sc->sc_its_cmd_base);


 reg = GITS_CBASER_VALID |
     (GITS_CBASER_CACHE_NIWAWB << GITS_CBASER_CACHE_SHIFT) |
     cmd_paddr | (GITS_CBASER_SHARE_IS << GITS_CBASER_SHARE_SHIFT) |
     (ITS_CMDQ_SIZE / 4096 - 1);
 gic_its_write_8(sc, GITS_CBASER, reg);


 tmp = gic_its_read_8(sc, GITS_CBASER);

 if ((tmp & GITS_CBASER_SHARE_MASK) !=
     (GITS_CBASER_SHARE_IS << GITS_CBASER_SHARE_SHIFT)) {

  if ((tmp & GITS_CBASER_SHARE_MASK) ==
      (GITS_CBASER_SHARE_NS << GITS_CBASER_SHARE_SHIFT)) {

   reg &= ~GITS_CBASER_CACHE_MASK;
   reg &= ~GITS_CBASER_SHARE_MASK;

   reg |= GITS_CBASER_CACHE_NIN << GITS_CBASER_CACHE_SHIFT;
   reg |= GITS_CBASER_SHARE_NS << GITS_CBASER_SHARE_SHIFT;

   gic_its_write_8(sc, GITS_CBASER, reg);
  }


  sc->sc_its_flags |= ITS_FLAGS_CMDQ_FLUSH;
 }


 gic_its_write_8(sc, GITS_CWRITER, 0x0);
}
