
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_intc_softc {int dummy; } ;
struct bcm_intc_irqsrc {int bii_mask; int bii_disable_reg; } ;


 int intc_write_4 (struct bcm_intc_softc*,int ,int ) ;

__attribute__((used)) static inline void
bcm_intc_isrc_mask(struct bcm_intc_softc *sc, struct bcm_intc_irqsrc *bii)
{

 intc_write_4(sc, bii->bii_disable_reg, bii->bii_mask);
}
