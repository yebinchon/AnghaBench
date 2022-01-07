
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int flags; } ;


 int AAC_DB_INTERRUPTS ;
 int AAC_DB_INT_NEW_COMM ;
 int AAC_FLAGS_NEW_COMM ;
 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int ) ;
 int AAC_RX_OIMR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*,char*) ;

__attribute__((used)) static void
aac_rx_set_interrupts(struct aac_softc *sc, int enable)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "%sable interrupts", enable ? "en" : "dis");

 if (enable) {
  if (sc->flags & AAC_FLAGS_NEW_COMM)
   AAC_MEM0_SETREG4(sc, AAC_RX_OIMR, ~AAC_DB_INT_NEW_COMM);
  else
   AAC_MEM0_SETREG4(sc, AAC_RX_OIMR, ~AAC_DB_INTERRUPTS);
 } else {
  AAC_MEM0_SETREG4(sc, AAC_RX_OIMR, ~0);
 }
}
