
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct musbotg_softc {size_t sc_id; } ;


 int* USB_CTRL ;
 int ti_scm_reg_read_4 (int,int*) ;
 int ti_scm_reg_write_4 (int,int) ;

__attribute__((used)) static void
musbotg_clocks_on(void *arg)
{
 struct musbotg_softc *sc;
 uint32_t c, reg;

 sc = arg;
        reg = USB_CTRL[sc->sc_id];

 ti_scm_reg_read_4(reg, &c);
 c &= ~3;
 c |= 1 << 19;
 c |= 1 << 20;
 ti_scm_reg_write_4(reg, c);
}
