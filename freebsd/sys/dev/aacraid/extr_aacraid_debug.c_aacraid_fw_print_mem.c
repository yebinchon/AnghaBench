
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct aac_softc {int FwDebugFlags; } ;


 int FW_DEBUG_FLAGS_NO_HEADERS_B ;
 int aacraid_fw_printf (struct aac_softc*,unsigned long,char*,char*) ;
 int sprintf (char*,char*,...) ;

void aacraid_fw_print_mem(struct aac_softc *sc, unsigned long PrintFlags, u_int8_t *Addr, int Count)
{
 int Offset, i;
 u_int32_t DebugFlags = 0;
 char Buffer[100];
 char *LineBuffer_P;





 if (sc != ((void*)0)) {
  DebugFlags = sc->FwDebugFlags;
  sc->FwDebugFlags |= FW_DEBUG_FLAGS_NO_HEADERS_B;
 }

 Offset = 0;




 while (Offset < Count) {





  LineBuffer_P = Buffer;




  sprintf(LineBuffer_P, "\n%04x  ", Offset);
  LineBuffer_P += 6;




  for (i = 0; i < 16; ++i) {




   if ((Offset + i) >= Count)
    sprintf (LineBuffer_P, "   ");
   else
      sprintf (LineBuffer_P, "%02x ", Addr[Offset+i]);
   LineBuffer_P += 3;




   if (i == 7) {
    sprintf (LineBuffer_P, "- ");
    LineBuffer_P += 2;
   }
  }




  sprintf (LineBuffer_P, "  ");
  LineBuffer_P += 2;
  for (i = 0; i < 16; ++i) {



   if ((Offset + i) >= Count)
    break;




   if ((Addr[Offset+i] > 0x1F) && (Addr[Offset+i] < 0x7F))
    sprintf (LineBuffer_P, "%c", Addr[Offset+i]);
   else
    sprintf (LineBuffer_P, ".");
   ++LineBuffer_P;
  }



  aacraid_fw_printf(sc, PrintFlags, "%s", Buffer);




  Offset += 16;

 }




 if (sc != ((void*)0))
  sc->FwDebugFlags = DebugFlags;
}
