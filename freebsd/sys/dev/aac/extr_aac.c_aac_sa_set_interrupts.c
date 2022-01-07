
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int dummy; } ;


 int AAC_DB_INTERRUPTS ;
 int AAC_MEM0_SETREG2 (struct aac_softc*,int ,int ) ;
 int AAC_SA_MASK0_CLEAR ;
 int AAC_SA_MASK0_SET ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*,char*) ;

__attribute__((used)) static void
aac_sa_set_interrupts(struct aac_softc *sc, int enable)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "%sable interrupts", enable ? "en" : "dis");

 if (enable) {
  AAC_MEM0_SETREG2((sc), AAC_SA_MASK0_CLEAR, AAC_DB_INTERRUPTS);
 } else {
  AAC_MEM0_SETREG2((sc), AAC_SA_MASK0_SET, ~0);
 }
}
