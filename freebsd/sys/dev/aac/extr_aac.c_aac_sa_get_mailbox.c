
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int dummy; } ;


 int AAC_MEM1_GETREG4 (struct aac_softc*,scalar_t__) ;
 scalar_t__ AAC_SA_MAILBOX ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_sa_get_mailbox(struct aac_softc *sc, int mb)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 return(AAC_MEM1_GETREG4(sc, AAC_SA_MAILBOX + (mb * 4)));
}
