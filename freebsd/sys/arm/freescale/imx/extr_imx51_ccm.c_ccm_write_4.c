
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imxccm_softc {int ccmregs; } ;


 int bus_write_4 (int ,int,int ) ;

__attribute__((used)) static inline void
ccm_write_4(struct imxccm_softc *sc, int reg, uint32_t val)
{

 bus_write_4(sc->ccmregs, reg, val);
}
