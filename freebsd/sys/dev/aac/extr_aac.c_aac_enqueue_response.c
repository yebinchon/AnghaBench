
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct aac_softc {TYPE_3__* aac_queues; TYPE_2__** aac_qentries; } ;
struct TYPE_5__ {scalar_t__ Size; scalar_t__ SenderFibAddress; scalar_t__ ReceiverFibAddress; } ;
struct aac_fib {TYPE_1__ Header; } ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ notify; } ;
struct TYPE_7__ {scalar_t__** qt_qindex; } ;
struct TYPE_6__ {scalar_t__ aq_fib_addr; scalar_t__ aq_fib_size; } ;


 size_t AAC_CONSUMER_INDEX ;
 size_t AAC_PRODUCER_INDEX ;
 int AAC_QNOTIFY (struct aac_softc*,scalar_t__) ;
 int EBUSY ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 TYPE_4__* aac_qinfo ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_enqueue_response(struct aac_softc *sc, int queue, struct aac_fib *fib)
{
 u_int32_t pi, ci;
 int error;
 u_int32_t fib_size;
 u_int32_t fib_addr;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");


 fib_size = fib->Header.Size;
 fib_addr = fib->Header.SenderFibAddress;
 fib->Header.ReceiverFibAddress = fib_addr;


 pi = sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX];
 ci = sc->aac_queues->qt_qindex[queue][AAC_CONSUMER_INDEX];


 if (pi >= aac_qinfo[queue].size)
  pi = 0;


 if ((pi + 1) == ci) {
  error = EBUSY;
  goto out;
 }


 (sc->aac_qentries[queue] + pi)->aq_fib_size = fib_size;
 (sc->aac_qentries[queue] + pi)->aq_fib_addr = fib_addr;


 sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX] = pi + 1;


 if (aac_qinfo[queue].notify != 0)
  AAC_QNOTIFY(sc, aac_qinfo[queue].notify);

 error = 0;

out:
 return(error);
}
