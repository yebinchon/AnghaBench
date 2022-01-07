
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_lintc_softc {int dummy; } ;


 int bcm_lintc_read_4 (struct bcm_lintc_softc*,int) ;
 int bcm_lintc_write_4 (struct bcm_lintc_softc*,int,int) ;

__attribute__((used)) static inline void
bcm_lintc_rwreg_clr(struct bcm_lintc_softc *sc, uint32_t reg,
    uint32_t mask)
{

 bcm_lintc_write_4(sc, reg, bcm_lintc_read_4(sc, reg) & ~mask);
}
