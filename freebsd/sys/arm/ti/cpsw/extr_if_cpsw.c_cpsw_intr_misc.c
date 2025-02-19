
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cpsw_softc {int dummy; } ;


 int CPSW_CPDMA_CPDMA_EOI_VECTOR ;
 int CPSW_DEBUGF (struct cpsw_softc*,char*) ;
 int CPSW_WR_C_MISC_EVNT_PEND ;
 int CPSW_WR_C_MISC_HOST_PEND ;
 int CPSW_WR_C_MISC_MDIOLINK ;
 int CPSW_WR_C_MISC_MDIOUSER ;
 int CPSW_WR_C_MISC_STAT (int ) ;
 int CPSW_WR_C_MISC_STAT_PEND ;
 int MDIOLINKINTMASKED ;
 int cpsw_intr_misc_host_error (struct cpsw_softc*) ;
 int cpsw_read_4 (struct cpsw_softc*,int ) ;
 int cpsw_stats_collect (struct cpsw_softc*) ;
 int cpsw_write_4 (struct cpsw_softc*,int ,int) ;

__attribute__((used)) static void
cpsw_intr_misc(void *arg)
{
 struct cpsw_softc *sc = arg;
 uint32_t stat = cpsw_read_4(sc, CPSW_WR_C_MISC_STAT(0));

 if (stat & CPSW_WR_C_MISC_EVNT_PEND)
  CPSW_DEBUGF(sc, ("Time sync event interrupt unimplemented"));
 if (stat & CPSW_WR_C_MISC_STAT_PEND)
  cpsw_stats_collect(sc);
 if (stat & CPSW_WR_C_MISC_HOST_PEND)
  cpsw_intr_misc_host_error(sc);
 if (stat & CPSW_WR_C_MISC_MDIOLINK) {
  cpsw_write_4(sc, MDIOLINKINTMASKED,
      cpsw_read_4(sc, MDIOLINKINTMASKED));
 }
 if (stat & CPSW_WR_C_MISC_MDIOUSER) {
  CPSW_DEBUGF(sc,
      ("MDIO operation completed interrupt unimplemented"));
 }
 cpsw_write_4(sc, CPSW_CPDMA_CPDMA_EOI_VECTOR, 3);
}
