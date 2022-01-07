
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct aac_softc {unsigned long DebugOffset; int DebugFlags; scalar_t__ FwDebugFlags; scalar_t__ FwDebugBufferSize; scalar_t__ DebugHeaderSize; int aac_regs_res1; } ;


 scalar_t__ AAC_GET_MAILBOX (struct aac_softc*,int) ;
 int AAC_MONKER_GETDRVPROP ;
 int aacraid_debug_flags ;
 int aacraid_sync_command (struct aac_softc*,int ,int ,int ,int ,int ,int *,int *) ;
 scalar_t__ rman_get_size (int ) ;
 scalar_t__ rman_get_start (int ) ;

int aacraid_get_fw_debug_buffer(struct aac_softc *sc)
{
 u_int32_t MonDriverBufferPhysAddrLow = 0;
 u_int32_t MonDriverBufferPhysAddrHigh = 0;
 u_int32_t MonDriverBufferSize = 0;
 u_int32_t MonDriverHeaderSize = 0;





 if (!aacraid_sync_command(sc, AAC_MONKER_GETDRVPROP, 0, 0, 0, 0, ((void*)0), ((void*)0))) {
  MonDriverBufferPhysAddrLow = AAC_GET_MAILBOX(sc, 1);
  MonDriverBufferPhysAddrHigh = AAC_GET_MAILBOX(sc, 2);
  MonDriverBufferSize = AAC_GET_MAILBOX(sc, 3);
  MonDriverHeaderSize = AAC_GET_MAILBOX(sc, 4);
  if (MonDriverBufferSize) {
   unsigned long Offset = MonDriverBufferPhysAddrLow
    - rman_get_start(sc->aac_regs_res1);





   if ((MonDriverBufferPhysAddrHigh == 0) &&
    (Offset + MonDriverBufferSize <
    rman_get_size(sc->aac_regs_res1))) {
    sc->DebugOffset = Offset;
    sc->DebugHeaderSize = MonDriverHeaderSize;
    sc->FwDebugBufferSize = MonDriverBufferSize;
    sc->FwDebugFlags = 0;
    sc->DebugFlags = aacraid_debug_flags;
    return 1;
   }
  }
 }




 return 0;
}
