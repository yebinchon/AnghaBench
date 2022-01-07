
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct bulk_waiter {scalar_t__ actual; int event; TYPE_4__* bulk; } ;
typedef int payload ;
typedef int VCHI_MEM_HANDLE_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_18__ {int slot_mutex; int id; scalar_t__ is_master; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_22__ {scalar_t__ local_insert; scalar_t__ remove; int process; int remote_insert; TYPE_4__* bulks; } ;
struct TYPE_19__ {scalar_t__ srvstate; int bulk_mutex; int localport; int remoteport; int bulk_remove_event; TYPE_5__ bulk_rx; TYPE_5__ bulk_tx; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_20__ {int* member_0; int member_1; } ;
typedef TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_21__ {int mode; int size; scalar_t__ data; scalar_t__ actual; void* userdata; int dir; } ;
typedef TYPE_4__ VCHIQ_BULK_T ;
typedef TYPE_5__ VCHIQ_BULK_QUEUE_T ;
typedef int VCHIQ_BULK_MODE_T ;
typedef int VCHIQ_BULK_DIR_T ;


 size_t BULK_INDEX (scalar_t__) ;
 int QMFLAGS_IS_BLOCKING ;
 int QMFLAGS_NO_MUTEX_LOCK ;
 int QMFLAGS_NO_MUTEX_UNLOCK ;
 scalar_t__ VCHIQ_BULK_ACTUAL_ABORTED ;




 int VCHIQ_BULK_TRANSMIT ;
 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_MAKE_MSG (int const,int ,int ) ;
 int VCHIQ_MSG_BULK_RX ;
 int VCHIQ_MSG_BULK_TX ;
 scalar_t__ VCHIQ_NUM_SERVICE_BULKS ;
 int VCHIQ_POLL_RXNOTIFY ;
 int VCHIQ_POLL_TXNOTIFY ;
 scalar_t__ VCHIQ_RETRY ;
 int VCHIQ_SERVICE_STATS_INC (TYPE_2__*,int ) ;
 scalar_t__ VCHIQ_SRVSTATE_OPEN ;
 scalar_t__ VCHIQ_SUCCESS ;
 int VCHI_MEM_HANDLE_INVALID ;
 int _sema_init (int *,int ) ;
 int bulk_stalls ;
 scalar_t__ down_interruptible (int *) ;
 TYPE_2__* find_service_by_handle (int ) ;
 scalar_t__ lmutex_lock_interruptible (int *) ;
 int lmutex_unlock (int *) ;
 scalar_t__ queue_message (TYPE_1__*,int *,int ,TYPE_3__*,int,int,int) ;
 int request_poll (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ resolve_bulks (TYPE_2__*,TYPE_5__*) ;
 int unlock_service (TYPE_2__*) ;
 scalar_t__ vchiq_check_service (TYPE_2__*) ;
 int vchiq_complete_bulk (TYPE_4__*) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ,char const,int,unsigned int,unsigned int) ;
 int vchiq_log_trace (int ,char*,int ,int ,char const,scalar_t__,int ,int ) ;
 scalar_t__ vchiq_prepare_bulk_data (TYPE_4__*,int ,void*,int,int ) ;
 int wmb () ;

VCHIQ_STATUS_T
vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 VCHI_MEM_HANDLE_T memhandle, void *offset, int size, void *userdata,
 VCHIQ_BULK_MODE_T mode, VCHIQ_BULK_DIR_T dir)
{
 VCHIQ_SERVICE_T *service = find_service_by_handle(handle);
 VCHIQ_BULK_QUEUE_T *queue;
 VCHIQ_BULK_T *bulk;
 VCHIQ_STATE_T *state;
 struct bulk_waiter *bulk_waiter = ((void*)0);
 const char dir_char = (dir == VCHIQ_BULK_TRANSMIT) ? 't' : 'r';
 const int dir_msgtype = (dir == VCHIQ_BULK_TRANSMIT) ?
  VCHIQ_MSG_BULK_TX : VCHIQ_MSG_BULK_RX;
 VCHIQ_STATUS_T status = VCHIQ_ERROR;

 if (!service ||
   (service->srvstate != VCHIQ_SRVSTATE_OPEN) ||
   ((memhandle == VCHI_MEM_HANDLE_INVALID) && (offset == ((void*)0))) ||
   (vchiq_check_service(service) != VCHIQ_SUCCESS))
  goto error_exit;

 switch (mode) {
 case 129:
 case 130:
  break;
 case 131:
  bulk_waiter = (struct bulk_waiter *)userdata;
  _sema_init(&bulk_waiter->event, 0);
  bulk_waiter->actual = 0;
  bulk_waiter->bulk = ((void*)0);
  break;
 case 128:
  bulk_waiter = (struct bulk_waiter *)userdata;
  bulk = bulk_waiter->bulk;
  goto waiting;
 default:
  goto error_exit;
 }

 state = service->state;

 queue = (dir == VCHIQ_BULK_TRANSMIT) ?
  &service->bulk_tx : &service->bulk_rx;

 if (lmutex_lock_interruptible(&service->bulk_mutex) != 0) {
  status = VCHIQ_RETRY;
  goto error_exit;
 }

 if (queue->local_insert == queue->remove + VCHIQ_NUM_SERVICE_BULKS) {
  VCHIQ_SERVICE_STATS_INC(service, bulk_stalls);
  do {
   lmutex_unlock(&service->bulk_mutex);
   if (down_interruptible(&service->bulk_remove_event)
    != 0) {
    status = VCHIQ_RETRY;
    goto error_exit;
   }
   if (lmutex_lock_interruptible(&service->bulk_mutex)
    != 0) {
    status = VCHIQ_RETRY;
    goto error_exit;
   }
  } while (queue->local_insert == queue->remove +
    VCHIQ_NUM_SERVICE_BULKS);
 }

 bulk = &queue->bulks[BULK_INDEX(queue->local_insert)];

 bulk->mode = mode;
 bulk->dir = dir;
 bulk->userdata = userdata;
 bulk->size = size;
 bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;

 if (vchiq_prepare_bulk_data(bulk, memhandle, offset, size, dir) !=
  VCHIQ_SUCCESS)
  goto unlock_error_exit;

 wmb();

 vchiq_log_info(vchiq_core_log_level,
  "%d: bt (%d->%d) %cx %x@%x %x",
  state->id,
  service->localport, service->remoteport, dir_char,
  size, (unsigned int)bulk->data, (unsigned int)userdata);



 if (lmutex_lock_interruptible(&state->slot_mutex) != 0) {
  status = VCHIQ_RETRY;
  goto cancel_bulk_error_exit;
 }

 if (service->srvstate != VCHIQ_SRVSTATE_OPEN)
  goto unlock_both_error_exit;

 if (state->is_master) {
  queue->local_insert++;
  if (resolve_bulks(service, queue))
   request_poll(state, service,
    (dir == VCHIQ_BULK_TRANSMIT) ?
    VCHIQ_POLL_TXNOTIFY : VCHIQ_POLL_RXNOTIFY);
 } else {
  int payload[2] = { (int)bulk->data, bulk->size };
  VCHIQ_ELEMENT_T element = { payload, sizeof(payload) };

  status = queue_message(state, ((void*)0),
   VCHIQ_MAKE_MSG(dir_msgtype,
    service->localport, service->remoteport),
   &element, 1, sizeof(payload),
   QMFLAGS_IS_BLOCKING |
   QMFLAGS_NO_MUTEX_LOCK |
   QMFLAGS_NO_MUTEX_UNLOCK);
  if (status != VCHIQ_SUCCESS) {
   goto unlock_both_error_exit;
  }
  queue->local_insert++;
 }

 lmutex_unlock(&state->slot_mutex);
 lmutex_unlock(&service->bulk_mutex);

 vchiq_log_trace(vchiq_core_log_level,
  "%d: bt:%d %cx li=%x ri=%x p=%x",
  state->id,
  service->localport, dir_char,
  queue->local_insert, queue->remote_insert, queue->process);

waiting:
 unlock_service(service);

 status = VCHIQ_SUCCESS;

 if (bulk_waiter) {
  bulk_waiter->bulk = bulk;
  if (down_interruptible(&bulk_waiter->event) != 0)
   status = VCHIQ_RETRY;
  else if (bulk_waiter->actual == VCHIQ_BULK_ACTUAL_ABORTED)
   status = VCHIQ_ERROR;
 }

 return status;

unlock_both_error_exit:
 lmutex_unlock(&state->slot_mutex);
cancel_bulk_error_exit:
 vchiq_complete_bulk(bulk);
unlock_error_exit:
 lmutex_unlock(&service->bulk_mutex);

error_exit:
 if (service)
  unlock_service(service);
 return status;
}
