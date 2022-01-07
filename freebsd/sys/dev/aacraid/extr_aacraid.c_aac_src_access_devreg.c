
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int msi_enabled; } ;
 int AAC_INT_DISABLE_ALL ;
 int AAC_INT_ENABLE_TYPE1_INTX ;
 int AAC_INT_ENABLE_TYPE1_MSIX ;
 int AAC_MEM0_GETREG4 (struct aac_softc*,int ) ;
 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int) ;
 int AAC_SRC_IDBR ;
 int AAC_SRC_IOAR ;
 int AAC_SRC_OIMR ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int PMC_ALL_INTERRUPT_BITS ;
 int PMC_GLOBAL_INT_BIT0 ;
 int PMC_GLOBAL_INT_BIT2 ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_src_access_devreg(struct aac_softc *sc, int mode)
{
 u_int32_t val;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 switch (mode) {
 case 130:
  AAC_MEM0_SETREG4(sc, AAC_SRC_OIMR,
   (sc->msi_enabled ? AAC_INT_ENABLE_TYPE1_MSIX :
               AAC_INT_ENABLE_TYPE1_INTX));
  break;

 case 132:
  AAC_MEM0_SETREG4(sc, AAC_SRC_OIMR, AAC_INT_DISABLE_ALL);
  break;

 case 128:

  val = AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  val |= 0x40;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IDBR, val);
  AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);

  val = PMC_ALL_INTERRUPT_BITS;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IOAR, val);
  val = AAC_MEM0_GETREG4(sc, AAC_SRC_OIMR);
  AAC_MEM0_SETREG4(sc, AAC_SRC_OIMR,
   val & (~(PMC_GLOBAL_INT_BIT2 | PMC_GLOBAL_INT_BIT0)));
  break;

 case 131:

  val = AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  val &= ~0x40;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IDBR, val);
  AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  break;

 case 134:

  val = AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  val |= 0x20;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IDBR, val);
  AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  break;

 case 133:

  val = AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  val |= 0x10;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IDBR, val);
  AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  break;

 case 129:

  val = AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);
  val |= 0x80;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IDBR, val);
  AAC_MEM0_GETREG4(sc, AAC_SRC_IDBR);

  val = PMC_ALL_INTERRUPT_BITS;
  AAC_MEM0_SETREG4(sc, AAC_SRC_IOAR, val);
  val = AAC_MEM0_GETREG4(sc, AAC_SRC_OIMR);
  AAC_MEM0_SETREG4(sc, AAC_SRC_OIMR,
   val & (~(PMC_GLOBAL_INT_BIT2)));
  break;

 default:
  break;
 }
}
