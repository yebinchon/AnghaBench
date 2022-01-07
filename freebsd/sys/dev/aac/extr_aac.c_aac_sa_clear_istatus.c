
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int dummy; } ;


 int AAC_MEM0_SETREG2 (struct aac_softc*,int ,int) ;
 int AAC_SA_DOORBELL0_CLEAR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_sa_clear_istatus(struct aac_softc *sc, int mask)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 AAC_MEM0_SETREG2(sc, AAC_SA_DOORBELL0_CLEAR, mask);
}
