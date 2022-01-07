
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int flags; } ;


 int AAC_FLAGS_NEW_COMM ;
 int AAC_MEM0_GETREG4 (struct aac_softc*,int ) ;
 int AAC_RKT_FWSTATUS ;
 int AAC_RKT_OMR0 ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_rkt_get_fwstatus(struct aac_softc *sc)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 return(AAC_MEM0_GETREG4(sc, sc->flags & AAC_FLAGS_NEW_COMM ?
     AAC_RKT_OMR0 : AAC_RKT_FWSTATUS));
}
