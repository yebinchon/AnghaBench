
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_softc {int flags; int aac_io_lock; struct aac_command* aac_commands; } ;
struct TYPE_2__ {int XferState; } ;
struct aac_fib {scalar_t__ data; TYPE_1__ Header; } ;
struct aac_command {int (* cm_complete ) (struct aac_command*) ;int cm_flags; struct aac_fib* cm_fib; } ;


 int AAC_CLEAR_ISTATUS (struct aac_softc*,int ) ;
 int AAC_CMD_COMPLETED ;
 int AAC_DB_RESPONSE_READY ;
 int AAC_ERROR_NORMAL ;
 int AAC_FIBSTATE_DONEADAP ;
 int AAC_GET_OUTB_QUEUE (struct aac_softc*) ;
 int AAC_MEM1_GETREG4 (struct aac_softc*,int) ;
 int AAC_QUEUE_FRZN ;
 int AAC_SET_OUTB_QUEUE (struct aac_softc*,int) ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int aac_handle_aif (struct aac_softc*,struct aac_fib*) ;
 int aac_remove_busy (struct aac_command*) ;
 int aac_startio (struct aac_softc*) ;
 int aac_unmap_command (struct aac_command*) ;
 int free (struct aac_fib*,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct aac_command*) ;
 int wakeup (struct aac_command*) ;

void
aac_new_intr(void *arg)
{
 struct aac_softc *sc;
 u_int32_t index, fast;
 struct aac_command *cm;
 struct aac_fib *fib;
 int i;

 sc = (struct aac_softc *)arg;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_lock(&sc->aac_io_lock);
 while (1) {
  index = AAC_GET_OUTB_QUEUE(sc);
  if (index == 0xffffffff)
   index = AAC_GET_OUTB_QUEUE(sc);
  if (index == 0xffffffff)
   break;
  if (index & 2) {
   if (index == 0xfffffffe) {



    continue;
   }

   fib = (struct aac_fib *)malloc(sizeof *fib, M_AACBUF,
       M_NOWAIT | M_ZERO);
   if (fib == ((void*)0)) {





    break;
   }
   index &= ~2;
   for (i = 0; i < sizeof(struct aac_fib)/4; ++i)
    ((u_int32_t *)fib)[i] = AAC_MEM1_GETREG4(sc, index + i*4);
   aac_handle_aif(sc, fib);
   free(fib, M_AACBUF);





   AAC_SET_OUTB_QUEUE(sc, index);
   AAC_CLEAR_ISTATUS(sc, AAC_DB_RESPONSE_READY);
  } else {
   fast = index & 1;
   cm = sc->aac_commands + (index >> 2);
   fib = cm->cm_fib;
   if (fast) {
    fib->Header.XferState |= AAC_FIBSTATE_DONEADAP;
    *((u_int32_t *)(fib->data)) = AAC_ERROR_NORMAL;
   }
   aac_remove_busy(cm);
    aac_unmap_command(cm);
   cm->cm_flags |= AAC_CMD_COMPLETED;


   if (cm->cm_complete != ((void*)0)) {
    cm->cm_complete(cm);
   } else {



    wakeup(cm);
   }
   sc->flags &= ~AAC_QUEUE_FRZN;
  }
 }

 if ((sc->flags & AAC_QUEUE_FRZN) == 0)
  aac_startio(sc);

 mtx_unlock(&sc->aac_io_lock);
}
