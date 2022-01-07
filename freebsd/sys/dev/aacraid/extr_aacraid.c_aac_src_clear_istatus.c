
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {scalar_t__ msi_enabled; } ;


 int AAC_ACCESS_DEVREG (struct aac_softc*,int ) ;
 int AAC_CLEAR_SYNC_BIT ;
 int AAC_DB_SYNC_COMMAND ;
 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int) ;
 int AAC_SRC_ODBR_C ;
 int AAC_SRC_ODR_SHIFT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_src_clear_istatus(struct aac_softc *sc, int mask)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if (sc->msi_enabled) {
  if (mask == AAC_DB_SYNC_COMMAND)
   AAC_ACCESS_DEVREG(sc, AAC_CLEAR_SYNC_BIT);
 } else {
  AAC_MEM0_SETREG4(sc, AAC_SRC_ODBR_C, mask << AAC_SRC_ODR_SHIFT);
 }
}
