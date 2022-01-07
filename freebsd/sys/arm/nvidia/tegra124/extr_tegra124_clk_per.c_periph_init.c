
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct periph_sc {int flags; int mux; int divider; int div_mask; int base_reg; } ;
struct clknode {int dummy; } ;
typedef int device_t ;


 int DCF_HAVE_DIV ;
 int DCF_HAVE_ENA ;
 int DCF_HAVE_MUX ;
 int DCF_IS_AUDIO ;
 int DCF_IS_MASK ;
 int DCF_IS_UART ;
 int DEVICE_LOCK (struct periph_sc*) ;
 int DEVICE_UNLOCK (struct periph_sc*) ;
 int MD4 (struct periph_sc*,int ,int ,int ) ;
 int PERLCK_AMUX_DIS ;
 int PERLCK_AMUX_SHIFT ;
 int PERLCK_ENA_MASK ;
 int PERLCK_MUX_MASK ;
 int PERLCK_MUX_SHIFT ;
 int PERLCK_UDIV_DIS ;
 int RD4 (struct periph_sc*,int ,int*) ;
 struct periph_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int) ;

__attribute__((used)) static int
periph_init(struct clknode *clk, device_t dev)
{
 struct periph_sc *sc;
 uint32_t reg;
 sc = clknode_get_softc(clk);

 DEVICE_LOCK(sc);
 if (sc->flags & DCF_HAVE_ENA)
  MD4(sc, sc->base_reg, PERLCK_ENA_MASK, PERLCK_ENA_MASK);

 RD4(sc, sc->base_reg, &reg);
 DEVICE_UNLOCK(sc);


 if (sc->flags & DCF_HAVE_MUX)
  sc->mux = (reg >> PERLCK_MUX_SHIFT) & PERLCK_MUX_MASK;
 else
  sc->mux = 0;
 if (sc->flags & DCF_HAVE_DIV)
  sc->divider = (reg & sc->div_mask) + 2;
 else
  sc->divider = 1;
 if ((sc->flags & DCF_IS_MASK) == DCF_IS_UART) {
  if (!(reg & PERLCK_UDIV_DIS))
   sc->divider = 2;
 }


 if ((sc->flags & DCF_IS_MASK) == DCF_IS_AUDIO) {
  if (!(reg & PERLCK_AMUX_DIS) && (sc->mux == 7)) {
   sc->mux = 8 +
       ((reg >> PERLCK_AMUX_SHIFT) & PERLCK_MUX_MASK);
  }
 }
 clknode_init_parent_idx(clk, sc->mux);
 return(0);
}
