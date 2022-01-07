
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct aac_softc {scalar_t__ aac_commands; TYPE_4__* aac_queues; TYPE_2__** aac_qentries; TYPE_1__* aac_common; } ;
struct TYPE_8__ {int XferState; } ;
struct aac_fib {scalar_t__ data; TYPE_3__ Header; } ;
struct aac_command {struct aac_fib* cm_fib; } ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ notify; } ;
struct TYPE_9__ {scalar_t__** qt_qindex; } ;
struct TYPE_7__ {scalar_t__ aq_fib_size; int aq_fib_addr; } ;
struct TYPE_6__ {struct aac_fib* ac_fibs; } ;


 size_t AAC_CONSUMER_INDEX ;
 scalar_t__ AAC_ERROR_NORMAL ;
 int AAC_FIBSTATE_DONEADAP ;




 size_t AAC_PRODUCER_INDEX ;
 int AAC_QNOTIFY (struct aac_softc*,scalar_t__) ;
 int ENOENT ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 TYPE_5__* aac_qinfo ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int panic (char*) ;

__attribute__((used)) static int
aac_dequeue_fib(struct aac_softc *sc, int queue, u_int32_t *fib_size,
  struct aac_fib **fib_addr)
{
 u_int32_t pi, ci;
 u_int32_t fib_index;
 int error;
 int notify;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");


 pi = sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX];
 ci = sc->aac_queues->qt_qindex[queue][AAC_CONSUMER_INDEX];


 if (ci == pi) {
  error = ENOENT;
  goto out;
 }


 if (pi >= aac_qinfo[queue].size)
  pi = 0;

 notify = 0;
 if (ci == pi + 1)
  notify++;


 if (ci >= aac_qinfo[queue].size)
  ci = 0;


 *fib_size = (sc->aac_qentries[queue] + ci)->aq_fib_size;

 switch (queue) {
 case 129:
 case 131:






  fib_index = (sc->aac_qentries[queue] + ci)->aq_fib_addr /
   sizeof(struct aac_fib);
  *fib_addr = &sc->aac_common->ac_fibs[fib_index];
  break;

 case 128:
 case 130:
 {
  struct aac_command *cm;
  fib_index = (sc->aac_qentries[queue] + ci)->aq_fib_addr;
  cm = sc->aac_commands + (fib_index >> 2);
  *fib_addr = cm->cm_fib;





  if (fib_index & 0x01) {
   (*fib_addr)->Header.XferState |= AAC_FIBSTATE_DONEADAP;
   *((u_int32_t*)((*fib_addr)->data)) = AAC_ERROR_NORMAL;
  }
  break;
 }
 default:
  panic("Invalid queue in aac_dequeue_fib()");
  break;
 }


 sc->aac_queues->qt_qindex[queue][AAC_CONSUMER_INDEX] = ci + 1;


 if (notify && (aac_qinfo[queue].notify != 0))
  AAC_QNOTIFY(sc, aac_qinfo[queue].notify);
 error = 0;

out:
 return(error);
}
