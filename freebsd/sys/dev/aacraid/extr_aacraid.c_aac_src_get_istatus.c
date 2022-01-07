
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {scalar_t__ msi_enabled; } ;


 int AAC_DB_SYNC_COMMAND ;
 int AAC_MEM0_GETREG4 (struct aac_softc*,int ) ;
 int AAC_MSI_SYNC_STATUS ;
 int AAC_SRC_ODBR_MSI ;
 int AAC_SRC_ODBR_R ;
 int AAC_SRC_ODR_SHIFT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_src_get_istatus(struct aac_softc *sc)
{
 int val;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if (sc->msi_enabled) {
  val = AAC_MEM0_GETREG4(sc, AAC_SRC_ODBR_MSI);
  if (val & AAC_MSI_SYNC_STATUS)
   val = AAC_DB_SYNC_COMMAND;
  else
   val = 0;
 } else {
  val = AAC_MEM0_GETREG4(sc, AAC_SRC_ODBR_R) >> AAC_SRC_ODR_SHIFT;
 }
 return(val);
}
