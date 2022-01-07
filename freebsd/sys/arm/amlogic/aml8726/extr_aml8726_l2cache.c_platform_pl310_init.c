
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pl310_softc {int dummy; } ;


 int AUX_CTRL_DATA_PREFETCH ;
 int AUX_CTRL_INSTR_PREFETCH ;
 int PL310_AUX_CTRL ;
 int pl310_read4 (struct pl310_softc*,int ) ;
 int pl310_write4 (struct pl310_softc*,int ,int ) ;

void
platform_pl310_init(struct pl310_softc *sc)
{
 uint32_t aux;

 aux = pl310_read4(sc, PL310_AUX_CTRL);
 aux &= ~AUX_CTRL_INSTR_PREFETCH;




 aux |= AUX_CTRL_DATA_PREFETCH;

 pl310_write4(sc, PL310_AUX_CTRL, aux);
}
