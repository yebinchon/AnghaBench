
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int bulk_transfer_mutex; int id; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_12__ {int fourcc; } ;
struct TYPE_16__ {scalar_t__ process; scalar_t__ remote_insert; scalar_t__ local_insert; TYPE_4__* bulks; } ;
struct TYPE_14__ {int remoteport; TYPE_1__ base; TYPE_5__ bulk_tx; int localport; TYPE_2__* state; } ;
typedef TYPE_3__ VCHIQ_SERVICE_T ;
struct TYPE_15__ {scalar_t__ actual; scalar_t__ remote_data; scalar_t__ data; int remote_size; int size; } ;
typedef TYPE_4__ VCHIQ_BULK_T ;
typedef TYPE_5__ VCHIQ_BULK_QUEUE_T ;


 size_t BULK_INDEX (scalar_t__) ;
 scalar_t__ SRVTRACE_ENABLED (TYPE_3__*,int ) ;
 int SRVTRACE_LEVEL (TYPE_3__*) ;
 scalar_t__ VCHIQ_BULK_ACTUAL_ABORTED ;
 int VCHIQ_FOURCC_AS_4CHARS (int ) ;
 int VCHIQ_LOG_INFO ;
 int WARN_ON (int) ;
 int lmutex_lock_interruptible (int *) ;
 int lmutex_unlock (int *) ;
 int vchiq_complete_bulk (TYPE_4__*) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,char const*,int ,int ,int ,unsigned int,unsigned int,...) ;
 int vchiq_log_trace (int ,char*,int ,int ,char,scalar_t__,scalar_t__,scalar_t__) ;
 int vchiq_transfer_bulk (TYPE_4__*) ;

__attribute__((used)) static int
resolve_bulks(VCHIQ_SERVICE_T *service, VCHIQ_BULK_QUEUE_T *queue)
{
 VCHIQ_STATE_T *state = service->state;
 int resolved = 0;
 int rc;

 while ((queue->process != queue->local_insert) &&
  (queue->process != queue->remote_insert)) {
  VCHIQ_BULK_T *bulk = &queue->bulks[BULK_INDEX(queue->process)];

  vchiq_log_trace(vchiq_core_log_level,
   "%d: rb:%d %cx - li=%x ri=%x p=%x",
   state->id, service->localport,
   (queue == &service->bulk_tx) ? 't' : 'r',
   queue->local_insert, queue->remote_insert,
   queue->process);

  WARN_ON(!((int)(queue->local_insert - queue->process) > 0));
  WARN_ON(!((int)(queue->remote_insert - queue->process) > 0));

  rc = lmutex_lock_interruptible(&state->bulk_transfer_mutex);
  if (rc != 0)
   break;

  vchiq_transfer_bulk(bulk);
  lmutex_unlock(&state->bulk_transfer_mutex);

  if (SRVTRACE_ENABLED(service, VCHIQ_LOG_INFO)) {
   const char *header = (queue == &service->bulk_tx) ?
    "Send Bulk to" : "Recv Bulk from";
   if (bulk->actual != VCHIQ_BULK_ACTUAL_ABORTED)
    vchiq_log_info(SRVTRACE_LEVEL(service),
     "%s %c%c%c%c d:%d len:%d %x<->%x",
     header,
     VCHIQ_FOURCC_AS_4CHARS(
      service->base.fourcc),
     service->remoteport,
     bulk->size,
     (unsigned int)bulk->data,
     (unsigned int)bulk->remote_data);
   else
    vchiq_log_info(SRVTRACE_LEVEL(service),
     "%s %c%c%c%c d:%d ABORTED - tx len:%d,"
     " rx len:%d %x<->%x",
     header,
     VCHIQ_FOURCC_AS_4CHARS(
      service->base.fourcc),
     service->remoteport,
     bulk->size,
     bulk->remote_size,
     (unsigned int)bulk->data,
     (unsigned int)bulk->remote_data);
  }

  vchiq_complete_bulk(bulk);
  queue->process++;
  resolved++;
 }
 return resolved;
}
