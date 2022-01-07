
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int dummy; } ;
typedef int platform_t ;


 int AUX_CTRL_DATA_PREFETCH ;
 int AUX_CTRL_INSTR_PREFETCH ;
 int PL310_AUX_CTRL ;
 int PL310_PREFETCH_CTRL ;
 int PREFETCH_CTRL_DATA_PREFETCH ;
 int PREFETCH_CTRL_INSTR_PREFETCH ;
 int WRITE_AUXCTRL_REG ;
 int WRITE_PREFETCH_CTRL_REG ;
 int pl310_read4 (struct pl310_softc*,int ) ;
 int ti_smc0 (int ,int ,int ) ;

void
omap4_pl310_init(platform_t plat, struct pl310_softc *sc)
{
 uint32_t aux, prefetch;

 aux = pl310_read4(sc, PL310_AUX_CTRL);
 prefetch = pl310_read4(sc, PL310_PREFETCH_CTRL);




 prefetch &= ~PREFETCH_CTRL_INSTR_PREFETCH;
 aux &= ~AUX_CTRL_INSTR_PREFETCH;







 prefetch |= PREFETCH_CTRL_DATA_PREFETCH;
 aux |= AUX_CTRL_DATA_PREFETCH;






 ti_smc0(aux, 0, WRITE_AUXCTRL_REG);
 ti_smc0(prefetch, 0, WRITE_PREFETCH_CTRL_REG);
}
