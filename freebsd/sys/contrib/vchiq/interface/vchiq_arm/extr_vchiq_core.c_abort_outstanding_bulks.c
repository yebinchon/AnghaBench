
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int fourcc; } ;
struct TYPE_14__ {scalar_t__ process; scalar_t__ local_insert; scalar_t__ remote_insert; TYPE_4__* bulks; } ;
struct TYPE_12__ {int remoteport; TYPE_2__ base; int localport; TYPE_1__* state; TYPE_5__ bulk_tx; } ;
typedef TYPE_3__ VCHIQ_SERVICE_T ;
struct TYPE_13__ {int dir; int actual; scalar_t__ size; int * data; scalar_t__ remote_size; int * remote_data; } ;
typedef TYPE_4__ VCHIQ_BULK_T ;
typedef TYPE_5__ VCHIQ_BULK_QUEUE_T ;
struct TYPE_10__ {int id; } ;


 size_t BULK_INDEX (scalar_t__) ;
 int SRVTRACE_LEVEL (TYPE_3__*) ;
 int VCHIQ_BULK_ACTUAL_ABORTED ;
 int VCHIQ_BULK_RECEIVE ;
 int VCHIQ_BULK_TRANSMIT ;
 int VCHIQ_FOURCC_AS_4CHARS (int ) ;
 int WARN_ON (int) ;
 int vchiq_complete_bulk (TYPE_4__*) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,char*,int ,int ,scalar_t__,scalar_t__) ;
 int vchiq_log_trace (int ,char*,int ,int ,char,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
abort_outstanding_bulks(VCHIQ_SERVICE_T *service, VCHIQ_BULK_QUEUE_T *queue)
{
 int is_tx = (queue == &service->bulk_tx);
 vchiq_log_trace(vchiq_core_log_level,
  "%d: aob:%d %cx - li=%x ri=%x p=%x",
  service->state->id, service->localport, is_tx ? 't' : 'r',
  queue->local_insert, queue->remote_insert, queue->process);

 WARN_ON(!((int)(queue->local_insert - queue->process) >= 0));
 WARN_ON(!((int)(queue->remote_insert - queue->process) >= 0));

 while ((queue->process != queue->local_insert) ||
  (queue->process != queue->remote_insert)) {
  VCHIQ_BULK_T *bulk = &queue->bulks[BULK_INDEX(queue->process)];

  if (queue->process == queue->remote_insert) {

   bulk->remote_data = ((void*)0);
   bulk->remote_size = 0;
   queue->remote_insert++;
  }

  if (queue->process != queue->local_insert) {
   vchiq_complete_bulk(bulk);

   vchiq_log_info(SRVTRACE_LEVEL(service),
    "%s %c%c%c%c d:%d ABORTED - tx len:%d, "
    "rx len:%d",
    is_tx ? "Send Bulk to" : "Recv Bulk from",
    VCHIQ_FOURCC_AS_4CHARS(service->base.fourcc),
    service->remoteport,
    bulk->size,
    bulk->remote_size);
  } else {

   bulk->data = ((void*)0);
   bulk->size = 0;
   bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;
   bulk->dir = is_tx ? VCHIQ_BULK_TRANSMIT :
    VCHIQ_BULK_RECEIVE;
   queue->local_insert++;
  }

  queue->process++;
 }
}
