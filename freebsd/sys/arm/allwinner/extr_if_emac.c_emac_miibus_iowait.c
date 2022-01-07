
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emac_softc {int dummy; } ;
typedef int boolean_t ;


 int DELAY (int) ;
 int EMAC_MAC_MIND ;
 int EMAC_READ_REG (struct emac_softc*,int ) ;

__attribute__((used)) static boolean_t
emac_miibus_iowait(struct emac_softc *sc)
{
 uint32_t timeout;

 for (timeout = 100; timeout != 0; --timeout) {
  DELAY(100);
  if ((EMAC_READ_REG(sc, EMAC_MAC_MIND) & 0x1) == 0)
   return (1);
 }

 return (0);
}
