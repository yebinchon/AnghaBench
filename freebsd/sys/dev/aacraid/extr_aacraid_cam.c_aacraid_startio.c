
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_state; int flags; scalar_t__ aac_sync_cm; } ;
struct aac_command {int cm_flags; scalar_t__ cm_datalen; } ;


 int AAC_CMD_MAPPED ;
 int AAC_FLAGS_SYNC_MODE ;
 int AAC_QUEUE_FRZN ;
 int AAC_STATE_RESET ;
 char* HBA_FLAGS_DBG_ERROR_B ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 struct aac_command* aac_dequeue_ready (struct aac_softc*) ;
 int aac_load_map_command_sg (struct aac_softc*,struct aac_command*) ;
 int aacraid_map_command_sg (struct aac_command*,int *,int ,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int panic (char*,struct aac_command*) ;

void
aacraid_startio(struct aac_softc *sc)
{
 struct aac_command *cm;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 for (;;) {
  if (sc->aac_state & AAC_STATE_RESET) {
   fwprintf(sc, HBA_FLAGS_DBG_ERROR_B, "AAC_STATE_RESET");
   break;
  }




  if (sc->flags & AAC_QUEUE_FRZN) {
   fwprintf(sc, HBA_FLAGS_DBG_ERROR_B, "AAC_QUEUE_FRZN");
   break;
  }





  if ((sc->flags & AAC_FLAGS_SYNC_MODE) && sc->aac_sync_cm)
   break;
  cm = aac_dequeue_ready(sc);


  if (cm == ((void*)0))
   break;


  if (cm->cm_flags & AAC_CMD_MAPPED)
   panic("aac: command %p already mapped", cm);






  if (cm->cm_datalen)
   aac_load_map_command_sg(sc, cm);
  else
   aacraid_map_command_sg(cm, ((void*)0), 0, 0);
 }
}
