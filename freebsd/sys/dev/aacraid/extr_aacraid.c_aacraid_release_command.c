
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct aac_softc {int aac_ev_cmfree; int aac_max_fib_size; int aac_io_lock; } ;
struct aac_event {int ev_arg; int (* ev_callback ) (struct aac_softc*,struct aac_event*,int ) ;} ;
struct aac_command {TYPE_3__* cm_fib; scalar_t__ cm_fibphys; struct aac_softc* cm_sc; scalar_t__ cm_passthr_dmat; int * cm_ccb; int * cm_complete; scalar_t__ cm_flags; int * cm_sgtable; } ;
struct TYPE_4__ {scalar_t__ ReceiverFibAddress; } ;
struct TYPE_5__ {scalar_t__ Handle; TYPE_1__ u; int SenderSize; scalar_t__ Unused; int StructType; int XferState; } ;
struct TYPE_6__ {TYPE_2__ Header; } ;


 int AAC_FIBSTATE_EMPTY ;
 int AAC_FIBTYPE_TFIB ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int MA_OWNED ;
 struct aac_event* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct aac_event*,int ) ;
 int aac_enqueue_free (struct aac_command*) ;
 int ev_links ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_assert (int *,int ) ;
 int stub1 (struct aac_softc*,struct aac_event*,int ) ;

void
aacraid_release_command(struct aac_command *cm)
{
 struct aac_event *event;
 struct aac_softc *sc;

 sc = cm->cm_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_assert(&sc->aac_io_lock, MA_OWNED);


 cm->cm_sgtable = ((void*)0);
 cm->cm_flags = 0;
 cm->cm_complete = ((void*)0);
 cm->cm_ccb = ((void*)0);
 cm->cm_passthr_dmat = 0;
 cm->cm_fib->Header.XferState = AAC_FIBSTATE_EMPTY;
 cm->cm_fib->Header.StructType = AAC_FIBTYPE_TFIB;
 cm->cm_fib->Header.Unused = 0;
 cm->cm_fib->Header.SenderSize = cm->cm_sc->aac_max_fib_size;






 cm->cm_fib->Header.u.ReceiverFibAddress = (u_int32_t)cm->cm_fibphys;
 cm->cm_fib->Header.Handle = 0;

 aac_enqueue_free(cm);





 while ((event = TAILQ_FIRST(&sc->aac_ev_cmfree)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->aac_ev_cmfree, event, ev_links);
  event->ev_callback(sc, event, event->ev_arg);
 }
}
