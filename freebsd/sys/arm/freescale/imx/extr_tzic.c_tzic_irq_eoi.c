
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tzic_softc {int dummy; } ;


 int TZIC_PRIOMASK ;
 int tzic_write_4 (struct tzic_softc*,int ,int) ;

__attribute__((used)) static inline void
tzic_irq_eoi(struct tzic_softc *sc)
{

 tzic_write_4(sc, TZIC_PRIOMASK, 0xff);
}
