
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int dummy; } ;
typedef int platform_t ;


 int PL310_DEBUG_CTRL ;
 int pl310_write4 (struct pl310_softc*,int ,int ) ;

void
mv_a38x_platform_pl310_write_debug(platform_t plat, struct pl310_softc *sc, uint32_t val)
{

 pl310_write4(sc, PL310_DEBUG_CTRL, val);
}
