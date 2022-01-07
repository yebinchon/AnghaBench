
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct periph_sc {int flags; int div_f_width; int divider; int div_mask; int base_reg; } ;
struct clknode {int dummy; } ;


 int CLK_SET_DRYRUN ;
 int CLK_SET_ROUND_DOWN ;
 int CLK_SET_ROUND_UP ;
 int DCF_HAVE_DIV ;
 int DEVICE_LOCK (struct periph_sc*) ;
 int DEVICE_UNLOCK (struct periph_sc*) ;
 int ERANGE ;
 int MD4 (struct periph_sc*,int ,int ,int) ;
 struct periph_sc* clknode_get_softc (struct clknode*) ;

__attribute__((used)) static int
periph_set_freq(struct clknode *clk, uint64_t fin, uint64_t *fout,
   int flags, int *stop)
{
 struct periph_sc *sc;
 uint64_t tmp, divider;

 sc = clknode_get_softc(clk);
 if (!(sc->flags & DCF_HAVE_DIV)) {
  *stop = 0;
  return (0);
 }

 tmp = fin << sc->div_f_width;
 divider = tmp / *fout;
 if ((tmp % *fout) != 0)
  divider++;

 if (divider < (1 << sc->div_f_width))
   divider = 1 << (sc->div_f_width - 1);

 if (flags & CLK_SET_DRYRUN) {
  if (((flags & (CLK_SET_ROUND_UP | CLK_SET_ROUND_DOWN)) == 0) &&
      (*fout != (tmp / divider)))
   return (ERANGE);
 } else {
  DEVICE_LOCK(sc);
  MD4(sc, sc->base_reg, sc->div_mask,
      (divider - (1 << sc->div_f_width)));
  DEVICE_UNLOCK(sc);
  sc->divider = divider;
 }
 *fout = tmp / divider;
 *stop = 1;
 return (0);
}
