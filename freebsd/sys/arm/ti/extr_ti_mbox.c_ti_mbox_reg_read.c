
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ti_mbox_softc {int sc_bh; int sc_bt; } ;


 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static __inline uint32_t
ti_mbox_reg_read(struct ti_mbox_softc *sc, uint16_t reg)
{
 return (bus_space_read_4(sc->sc_bt, sc->sc_bh, reg));
}
