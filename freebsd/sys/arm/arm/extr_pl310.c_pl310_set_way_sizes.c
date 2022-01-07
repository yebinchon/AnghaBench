
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int dummy; } ;


 int AUX_CTRL_ASSOCIATIVITY_SHIFT ;
 int AUX_CTRL_WAY_SIZE_MASK ;
 int AUX_CTRL_WAY_SIZE_SHIFT ;
 int PL310_AUX_CTRL ;
 int g_l2cache_size ;
 int g_l2cache_way_mask ;
 int g_way_size ;
 int g_ways_assoc ;
 int pl310_read4 (struct pl310_softc*,int ) ;

__attribute__((used)) static void
pl310_set_way_sizes(struct pl310_softc *sc)
{
 uint32_t aux_value;

 aux_value = pl310_read4(sc, PL310_AUX_CTRL);
 g_way_size = (aux_value & AUX_CTRL_WAY_SIZE_MASK) >>
     AUX_CTRL_WAY_SIZE_SHIFT;
 g_way_size = 1 << (g_way_size + 13);
 if (aux_value & (1 << AUX_CTRL_ASSOCIATIVITY_SHIFT))
  g_ways_assoc = 16;
 else
  g_ways_assoc = 8;
 g_l2cache_way_mask = (1 << g_ways_assoc) - 1;
 g_l2cache_size = g_way_size * g_ways_assoc;
}
