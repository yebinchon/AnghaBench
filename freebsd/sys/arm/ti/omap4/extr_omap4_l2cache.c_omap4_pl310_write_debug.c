
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int dummy; } ;
typedef int platform_t ;


 int L2CACHE_WRITE_DEBUG_REG ;
 int ti_smc0 (int ,int ,int ) ;

void
omap4_pl310_write_debug(platform_t plat, struct pl310_softc *sc, uint32_t val)
{

 ti_smc0(val, 0, L2CACHE_WRITE_DEBUG_REG);
}
