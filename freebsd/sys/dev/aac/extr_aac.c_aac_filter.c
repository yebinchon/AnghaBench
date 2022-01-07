
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct aac_softc {int aifthread; TYPE_1__* aac_common; int aac_task_complete; } ;
struct TYPE_2__ {int* ac_printf; } ;


 int AAC_CLEAR_ISTATUS (struct aac_softc*,int) ;
 int AAC_DB_COMMAND_READY ;
 int AAC_DB_PRINTF ;
 int AAC_DB_RESPONSE_READY ;
 int AAC_GET_ISTATUS (struct aac_softc*) ;
 int FILTER_HANDLED ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_fast ;
 int wakeup (int ) ;

int
aac_filter(void *arg)
{
 struct aac_softc *sc;
 u_int16_t reason;

 sc = (struct aac_softc *)arg;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");






 reason = AAC_GET_ISTATUS(sc);
 AAC_CLEAR_ISTATUS(sc, reason);


 if (reason & AAC_DB_RESPONSE_READY)
  taskqueue_enqueue(taskqueue_fast, &sc->aac_task_complete);


 if (reason & (AAC_DB_PRINTF | AAC_DB_COMMAND_READY)) {




  if ((reason & AAC_DB_PRINTF) &&
   (sc->aac_common->ac_printf[0] == 0))
   sc->aac_common->ac_printf[0] = 32;
  wakeup(sc->aifthread);
 }
 return (FILTER_HANDLED);
}
