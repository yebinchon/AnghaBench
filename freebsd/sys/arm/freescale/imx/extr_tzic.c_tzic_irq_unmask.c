
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tzic_softc {int dummy; } ;


 int TZIC_ENSET (int) ;
 int tzic_write_4 (struct tzic_softc*,int ,unsigned int) ;

__attribute__((used)) static inline void
tzic_irq_unmask(struct tzic_softc *sc, u_int irq)
{

 tzic_write_4(sc, TZIC_ENSET(irq >> 5), (1u << (irq & 0x1f)));
}
