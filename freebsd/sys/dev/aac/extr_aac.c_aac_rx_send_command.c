
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_softc {int dummy; } ;
struct aac_command {int cm_fibphys; TYPE_2__* cm_fib; } ;
struct TYPE_3__ {int Size; } ;
struct TYPE_4__ {TYPE_1__ Header; } ;


 int AAC_MEM0_GETREG4 (struct aac_softc*,int ) ;
 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int) ;
 int AAC_MEM1_SETREG4 (struct aac_softc*,int,int) ;
 int AAC_RX_IQUE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_enqueue_busy (struct aac_command*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_rx_send_command(struct aac_softc *sc, struct aac_command *cm)
{
 u_int32_t index, device;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "send command (new comm.)");

 index = AAC_MEM0_GETREG4(sc, AAC_RX_IQUE);
 if (index == 0xffffffffL)
  index = AAC_MEM0_GETREG4(sc, AAC_RX_IQUE);
 if (index == 0xffffffffL)
  return index;
 aac_enqueue_busy(cm);
 device = index;
 AAC_MEM1_SETREG4(sc, device, (u_int32_t)(cm->cm_fibphys & 0xffffffffUL));
 device += 4;
 AAC_MEM1_SETREG4(sc, device, (u_int32_t)(cm->cm_fibphys >> 32));
 device += 4;
 AAC_MEM1_SETREG4(sc, device, cm->cm_fib->Header.Size);
 AAC_MEM0_SETREG4(sc, AAC_RX_IQUE, index);
 return 0;
}
