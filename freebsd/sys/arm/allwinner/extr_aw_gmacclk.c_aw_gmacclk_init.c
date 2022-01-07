
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clknode {int dummy; } ;
struct aw_gmacclk_sc {int dummy; } ;
typedef int device_t ;


 int CLK_IDX_MII ;
 int CLK_IDX_RGMII ;
 int DEVICE_LOCK (struct aw_gmacclk_sc*) ;
 int DEVICE_UNLOCK (struct aw_gmacclk_sc*) ;
 int ENXIO ;
 int GMACCLK_READ (struct aw_gmacclk_sc*,int*) ;
 int GMAC_CLK_SRC ;


 int GMAC_CLK_SRC_SHIFT ;
 struct aw_gmacclk_sc* clknode_get_softc (struct clknode*) ;
 int clknode_init_parent_idx (struct clknode*,int) ;

__attribute__((used)) static int
aw_gmacclk_init(struct clknode *clk, device_t dev)
{
 struct aw_gmacclk_sc *sc;
 uint32_t val, index;

 sc = clknode_get_softc(clk);

 DEVICE_LOCK(sc);
 GMACCLK_READ(sc, &val);
 DEVICE_UNLOCK(sc);

 switch ((val & GMAC_CLK_SRC) >> GMAC_CLK_SRC_SHIFT) {
 case 129:
  index = CLK_IDX_MII;
  break;
 case 128:
  index = CLK_IDX_RGMII;
  break;
 default:
  return (ENXIO);
 }

 clknode_init_parent_idx(clk, index);
 return (0);
}
