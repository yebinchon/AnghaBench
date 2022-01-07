
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct aac_softc {int aifflags; int flags; int aac_dev; int aac_io_lock; TYPE_1__* aac_common; int aifthread; } ;
struct TYPE_4__ {int Command; int XferState; scalar_t__ StructType; int Size; } ;
struct aac_fib {TYPE_2__ Header; scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__* ac_printf; } ;
typedef int AAC_FSAStatus ;


 int AAC_ADAP_NORM_RESP_QUEUE ;
 int AAC_AIFFLAGS_ALLOCFIBS ;
 int AAC_AIFFLAGS_EXIT ;
 int AAC_AIFFLAGS_PENDING ;
 int AAC_AIFFLAGS_RUNNING ;
 int AAC_FIBSTATE_DONEHOST ;
 int AAC_FIBSTATE_FROMADAP ;
 scalar_t__ AAC_FIBTYPE_TFIB ;
 int AAC_FLAGS_NEW_COMM ;
 int AAC_HOST_NORM_CMD_QUEUE ;
 int AAC_PERIODIC_INTERVAL ;
 int AAC_PRINT_FIB (struct aac_softc*,struct aac_fib*) ;

 int EWOULDBLOCK ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int PRIBIO ;
 int ST_OK ;
 int aac_alloc_commands (struct aac_softc*) ;
 scalar_t__ aac_dequeue_fib (struct aac_softc*,int ,int *,struct aac_fib**) ;
 int aac_enqueue_response (struct aac_softc*,int ,struct aac_fib*) ;
 int aac_handle_aif (struct aac_softc*,struct aac_fib*) ;
 int aac_print_printf (struct aac_softc*) ;
 int aac_startio (struct aac_softc*) ;
 int aac_timeout (struct aac_softc*) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int hz ;
 int kproc_exit (int ) ;
 int msleep (int ,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int ) ;

__attribute__((used)) static void
aac_command_thread(struct aac_softc *sc)
{
 struct aac_fib *fib;
 u_int32_t fib_size;
 int size, retval;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 mtx_lock(&sc->aac_io_lock);
 sc->aifflags = AAC_AIFFLAGS_RUNNING;

 while ((sc->aifflags & AAC_AIFFLAGS_EXIT) == 0) {

  retval = 0;
  if ((sc->aifflags & AAC_AIFFLAGS_PENDING) == 0)
   retval = msleep(sc->aifthread, &sc->aac_io_lock, PRIBIO,
     "aifthd", AAC_PERIODIC_INTERVAL * hz);






  if ((sc->aifflags & AAC_AIFFLAGS_ALLOCFIBS) != 0) {
   mtx_unlock(&sc->aac_io_lock);
   aac_alloc_commands(sc);
   mtx_lock(&sc->aac_io_lock);
   sc->aifflags &= ~AAC_AIFFLAGS_ALLOCFIBS;
   aac_startio(sc);
  }






  if (retval == EWOULDBLOCK)
   aac_timeout(sc);


  if (sc->aac_common->ac_printf[0] != 0)
   aac_print_printf(sc);


  if (sc->flags & AAC_FLAGS_NEW_COMM)
   continue;
  for (;;) {
   if (aac_dequeue_fib(sc, AAC_HOST_NORM_CMD_QUEUE,
        &fib_size, &fib))
    break;

   AAC_PRINT_FIB(sc, fib);

   switch (fib->Header.Command) {
   case 128:
    aac_handle_aif(sc, fib);
    break;
   default:
    device_printf(sc->aac_dev, "unknown command "
           "from controller\n");
    break;
   }

   if ((fib->Header.XferState == 0) ||
       (fib->Header.StructType != AAC_FIBTYPE_TFIB)) {
    break;
   }


   if (fib->Header.XferState & AAC_FIBSTATE_FROMADAP) {
    fib->Header.XferState |= AAC_FIBSTATE_DONEHOST;
    *(AAC_FSAStatus*)fib->data = ST_OK;


    size = fib->Header.Size;
    if (size > sizeof(struct aac_fib)) {
     size = sizeof(struct aac_fib);
     fib->Header.Size = size;
    }





    aac_enqueue_response(sc,
       AAC_ADAP_NORM_RESP_QUEUE,
       fib);
   }
  }
 }
 sc->aifflags &= ~AAC_AIFFLAGS_RUNNING;
 mtx_unlock(&sc->aac_io_lock);
 wakeup(sc->aac_dev);

 kproc_exit(0);
}
