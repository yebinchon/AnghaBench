
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct periph_sc {int flags; int div_f_width; int divider; int base_reg; } ;
struct clknode {int dummy; } ;


 int DCF_HAVE_DIV ;
 int DEVICE_LOCK (struct periph_sc*) ;
 int DEVICE_UNLOCK (struct periph_sc*) ;
 int RD4 (struct periph_sc*,int ,int *) ;
 struct periph_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
periph_recalc(struct clknode *clk, uint64_t *freq)
{
 struct periph_sc *sc;
 uint32_t reg;

 sc = clknode_get_softc(clk);

 if (sc->flags & DCF_HAVE_DIV) {
  DEVICE_LOCK(sc);
  RD4(sc, sc->base_reg, &reg);
  DEVICE_UNLOCK(sc);
  *freq = (*freq << sc->div_f_width) / sc->divider;
 }
 return (0);
}
