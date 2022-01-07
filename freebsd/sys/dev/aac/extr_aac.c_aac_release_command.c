
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct aac_softc {int aac_ev_cmfree; int aac_max_fib_size; } ;
struct aac_event {int ev_arg; int (* ev_callback ) (struct aac_softc*,struct aac_event*,int ) ;} ;
struct aac_command {TYPE_2__* cm_fib; scalar_t__ cm_fibphys; struct aac_softc* cm_sc; int cm_queue; int * cm_private; int * cm_complete; scalar_t__ cm_flags; int * cm_sgtable; scalar_t__ cm_datalen; } ;
struct TYPE_3__ {scalar_t__ SenderData; scalar_t__ ReceiverFibAddress; int SenderSize; scalar_t__ Flags; int StructType; int XferState; } ;
struct TYPE_4__ {TYPE_1__ Header; } ;


 int AAC_ADAP_NORM_CMD_QUEUE ;
 int AAC_FIBSTATE_EMPTY ;
 int AAC_FIBTYPE_TFIB ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 struct aac_event* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aac_event*,int ) ;
 int aac_enqueue_free (struct aac_command*) ;
 int ev_links ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int stub1 (struct aac_softc*,struct aac_event*,int ) ;

void
aac_release_command(struct aac_command *cm)
{
 struct aac_event *event;
 struct aac_softc *sc;

 sc = cm->cm_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");


 cm->cm_datalen = 0;
 cm->cm_sgtable = ((void*)0);
 cm->cm_flags = 0;
 cm->cm_complete = ((void*)0);
 cm->cm_private = ((void*)0);
 cm->cm_queue = AAC_ADAP_NORM_CMD_QUEUE;
 cm->cm_fib->Header.XferState = AAC_FIBSTATE_EMPTY;
 cm->cm_fib->Header.StructType = AAC_FIBTYPE_TFIB;
 cm->cm_fib->Header.Flags = 0;
 cm->cm_fib->Header.SenderSize = cm->cm_sc->aac_max_fib_size;






 cm->cm_fib->Header.ReceiverFibAddress = (u_int32_t)cm->cm_fibphys;
 cm->cm_fib->Header.SenderData = 0;

 aac_enqueue_free(cm);

 if ((event = TAILQ_FIRST(&sc->aac_ev_cmfree)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->aac_ev_cmfree, event, ev_links);
  event->ev_callback(sc, event, event->ev_arg);
 }
}
