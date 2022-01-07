
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
struct aac_softc {TYPE_4__* aac_queues; TYPE_3__** aac_qentries; } ;
struct aac_command {TYPE_2__* cm_fib; } ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ notify; } ;
struct TYPE_9__ {scalar_t__** qt_qindex; } ;
struct TYPE_8__ {scalar_t__ aq_fib_addr; scalar_t__ aq_fib_size; } ;
struct TYPE_6__ {scalar_t__ Size; scalar_t__ ReceiverFibAddress; } ;
struct TYPE_7__ {TYPE_1__ Header; } ;


 size_t AAC_CONSUMER_INDEX ;
 size_t AAC_PRODUCER_INDEX ;
 int AAC_QNOTIFY (struct aac_softc*,scalar_t__) ;
 int EBUSY ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_enqueue_busy (struct aac_command*) ;
 TYPE_5__* aac_qinfo ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_enqueue_fib(struct aac_softc *sc, int queue, struct aac_command *cm)
{
 u_int32_t pi, ci;
 int error;
 u_int32_t fib_size;
 u_int32_t fib_addr;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 fib_size = cm->cm_fib->Header.Size;
 fib_addr = cm->cm_fib->Header.ReceiverFibAddress;


 pi = sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX];
 ci = sc->aac_queues->qt_qindex[queue][AAC_CONSUMER_INDEX];


 if (pi >= aac_qinfo[queue].size)
  pi = 0;


 if ((pi + 1) == ci) {
  error = EBUSY;
  goto out;
 }





 aac_enqueue_busy(cm);


 (sc->aac_qentries[queue] + pi)->aq_fib_size = fib_size;
 (sc->aac_qentries[queue] + pi)->aq_fib_addr = fib_addr;


 sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX] = pi + 1;


 if (aac_qinfo[queue].notify != 0)
  AAC_QNOTIFY(sc, aac_qinfo[queue].notify);

 error = 0;

out:
 return(error);
}
