
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_softc {int dummy; } ;


 int DELAY (int) ;
 int EMAC_CTL ;
 int EMAC_WRITE_REG (struct emac_softc*,int ,int) ;

__attribute__((used)) static void
emac_reset(struct emac_softc *sc)
{

 EMAC_WRITE_REG(sc, EMAC_CTL, 0);
 DELAY(200);
 EMAC_WRITE_REG(sc, EMAC_CTL, 1);
 DELAY(200);
}
