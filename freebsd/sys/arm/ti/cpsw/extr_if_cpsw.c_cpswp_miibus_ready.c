
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cpsw_softc {int dummy; } ;


 int CPSW_MIIBUS_DELAY ;
 int CPSW_MIIBUS_RETRIES ;
 int DELAY (int ) ;
 int MDIO_PHYACCESS_GO ;
 int cpsw_read_4 (struct cpsw_softc*,int) ;

__attribute__((used)) static int
cpswp_miibus_ready(struct cpsw_softc *sc, uint32_t reg)
{
 uint32_t r, retries = CPSW_MIIBUS_RETRIES;

 while (--retries) {
  r = cpsw_read_4(sc, reg);
  if ((r & MDIO_PHYACCESS_GO) == 0)
   return (1);
  DELAY(CPSW_MIIBUS_DELAY);
 }

 return (0);
}
