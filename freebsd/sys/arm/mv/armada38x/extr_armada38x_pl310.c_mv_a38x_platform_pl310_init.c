
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int sc_io_coherent; } ;
typedef int platform_t ;


 int PL310_POWER_CTRL ;
 int PL310_PREFETCH_CTRL ;
 int POWER_CTRL_ENABLE_GATING ;
 int PREFETCH_CTRL_DATA_PREFETCH ;
 int PREFETCH_CTRL_DL ;
 int PREFETCH_CTRL_DL_ON_WRAP ;
 int PREFETCH_CTRL_INCR_DL ;
 int pl310_read4 (struct pl310_softc*,int ) ;
 int pl310_write4 (struct pl310_softc*,int ,int) ;

void
mv_a38x_platform_pl310_init(platform_t plat, struct pl310_softc *sc)
{
 uint32_t reg;





 reg = pl310_read4(sc, PL310_POWER_CTRL);
 reg |= POWER_CTRL_ENABLE_GATING;
 pl310_write4(sc, PL310_POWER_CTRL, reg);

 pl310_write4(sc, PL310_PREFETCH_CTRL, PREFETCH_CTRL_DL |
     PREFETCH_CTRL_DATA_PREFETCH | PREFETCH_CTRL_INCR_DL |
     PREFETCH_CTRL_DL_ON_WRAP);


 sc->sc_io_coherent = 1;
}
