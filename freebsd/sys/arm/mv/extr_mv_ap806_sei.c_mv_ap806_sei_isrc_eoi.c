
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_ap806_sei_softc {int dummy; } ;
struct mv_ap806_sei_irqsrc {int irq; } ;


 int GICP_SECR (int ) ;
 int GICP_SECR_BIT (int ) ;
 int WR4 (struct mv_ap806_sei_softc*,int ,int ) ;

__attribute__((used)) static inline void
mv_ap806_sei_isrc_eoi(struct mv_ap806_sei_softc *sc,
     struct mv_ap806_sei_irqsrc *sisrc)
{

 WR4(sc, GICP_SECR(sisrc->irq), GICP_SECR_BIT(sisrc->irq));
}
