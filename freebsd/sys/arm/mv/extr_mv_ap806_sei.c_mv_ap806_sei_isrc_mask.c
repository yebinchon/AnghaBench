
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mv_ap806_sei_softc {int dummy; } ;
struct mv_ap806_sei_irqsrc {int irq; } ;


 int GICP_SEMR (int ) ;
 int GICP_SEMR_BIT (int ) ;
 int MV_AP806_SEI_LOCK (struct mv_ap806_sei_softc*) ;
 int MV_AP806_SEI_UNLOCK (struct mv_ap806_sei_softc*) ;
 scalar_t__ RD4 (struct mv_ap806_sei_softc*,int ) ;
 int WR4 (struct mv_ap806_sei_softc*,int ,scalar_t__) ;

__attribute__((used)) static inline void
mv_ap806_sei_isrc_mask(struct mv_ap806_sei_softc *sc,
     struct mv_ap806_sei_irqsrc *sisrc, uint32_t val)
{
 uint32_t tmp;
 int bit;

 bit = GICP_SEMR_BIT(sisrc->irq);
 MV_AP806_SEI_LOCK(sc);
 tmp = RD4(sc, GICP_SEMR(sisrc->irq));
 if (val != 0)
  tmp |= 1 << bit;
 else
  tmp &= ~(1 << bit);
 WR4(sc, GICP_SEMR(sisrc->irq), tmp);
 MV_AP806_SEI_UNLOCK(sc);
}
