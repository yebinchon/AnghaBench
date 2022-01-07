
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int dummy; } ;
typedef int platform_t ;


 int PL310_DATA_RAM_CTRL ;
 int PL310_POWER_CTRL ;
 int PL310_TAG_RAM_CTRL ;
 int POWER_CTRL_ENABLE_GATING ;
 int POWER_CTRL_ENABLE_STANDBY ;
 int pl310_read4 (struct pl310_softc*,int ) ;
 int pl310_set_ram_latency (struct pl310_softc*,int ,int,int,int) ;
 int pl310_write4 (struct pl310_softc*,int ,int) ;

void
imx6_pl310_init(platform_t plat, struct pl310_softc *sc)
{
 uint32_t reg;






 reg = pl310_read4(sc, PL310_POWER_CTRL);
 reg |= POWER_CTRL_ENABLE_GATING | POWER_CTRL_ENABLE_STANDBY;
 pl310_write4(sc, PL310_POWER_CTRL, reg);

 pl310_set_ram_latency(sc, PL310_TAG_RAM_CTRL, 4, 2, 3);
 pl310_set_ram_latency(sc, PL310_DATA_RAM_CTRL, 4, 2, 3);
}
