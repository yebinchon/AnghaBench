
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_17__ {int sync_mutex; TYPE_2__* remote; int id; TYPE_4__* local; } ;
typedef TYPE_3__ VCHIQ_STATE_T ;
struct TYPE_18__ {int slot_sync; int sync_release; } ;
typedef TYPE_4__ VCHIQ_SHARED_STATE_T ;
struct TYPE_15__ {int fourcc; } ;
struct TYPE_19__ {TYPE_1__ base; } ;
typedef TYPE_5__ VCHIQ_SERVICE_T ;
struct TYPE_20__ {int msgid; int size; scalar_t__ data; } ;
typedef TYPE_6__ VCHIQ_HEADER_T ;
struct TYPE_21__ {int size; int data; } ;
typedef TYPE_7__ VCHIQ_ELEMENT_T ;
struct TYPE_16__ {int sync_trigger; } ;


 scalar_t__ SLOT_DATA_FROM_INDEX (TYPE_3__*,int ) ;
 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_FOURCC_AS_4CHARS (int) ;
 scalar_t__ VCHIQ_LOG_TRACE ;
 int VCHIQ_MAKE_FOURCC (char,char,char,char) ;
 int VCHIQ_MSGID_PADDING ;
 int VCHIQ_MSG_DSTPORT (int) ;
 scalar_t__ VCHIQ_MSG_PAUSE ;
 scalar_t__ VCHIQ_MSG_RESUME ;
 int VCHIQ_MSG_SRCPORT (int) ;
 scalar_t__ VCHIQ_MSG_TYPE (int) ;
 scalar_t__ VCHIQ_RETRY ;
 int VCHIQ_SERVICE_STATS_ADD (TYPE_5__*,int ,int) ;
 int VCHIQ_SERVICE_STATS_INC (TYPE_5__*,int ) ;
 int VCHIQ_STATS_INC (TYPE_3__*,int ) ;
 scalar_t__ VCHIQ_SUCCESS ;
 int WARN_ON (int) ;
 int ctrl_tx_bytes ;
 int ctrl_tx_count ;
 int error_count ;
 scalar_t__ lmutex_lock_interruptible (int *) ;
 int lmutex_unlock (int *) ;
 int memcpy (scalar_t__,int ,int) ;
 int min (int,int) ;
 int msg_type_str (scalar_t__) ;
 int remote_event_signal (int *) ;
 int remote_event_wait (int *) ;
 int rmb () ;
 scalar_t__ vchiq_copy_from_user (scalar_t__,int ,size_t) ;
 int vchiq_core_log_level ;
 int vchiq_log_dump_mem (char*,int ,scalar_t__,int ) ;
 int vchiq_log_error (int ,char*,int ,int) ;
 int vchiq_log_info (scalar_t__,char*,int ,int ,unsigned int,int,int ,int ) ;
 int vchiq_log_trace (scalar_t__,char*,int ,scalar_t__,int ,int ,int ,int) ;
 scalar_t__ vchiq_sync_log_level ;
 int wmb () ;

__attribute__((used)) static VCHIQ_STATUS_T
queue_message_sync(VCHIQ_STATE_T *state, VCHIQ_SERVICE_T *service,
 int msgid, const VCHIQ_ELEMENT_T *elements,
 int count, int size, int is_blocking)
{
 VCHIQ_SHARED_STATE_T *local;
 VCHIQ_HEADER_T *header;

 local = state->local;

 if ((VCHIQ_MSG_TYPE(msgid) != VCHIQ_MSG_RESUME) &&
  (lmutex_lock_interruptible(&state->sync_mutex) != 0))
  return VCHIQ_RETRY;

 remote_event_wait(&local->sync_release);

 rmb();

 header = (VCHIQ_HEADER_T *)SLOT_DATA_FROM_INDEX(state,
  local->slot_sync);

 {
  int oldmsgid = header->msgid;
  if (oldmsgid != VCHIQ_MSGID_PADDING)
   vchiq_log_error(vchiq_core_log_level,
    "%d: qms - msgid %x, not PADDING",
    state->id, oldmsgid);
 }

 if (service) {
  int i, pos;

  vchiq_log_info(vchiq_sync_log_level,
   "%d: qms %s@%x,%x (%d->%d)", state->id,
   msg_type_str(VCHIQ_MSG_TYPE(msgid)),
   (unsigned int)header, size,
   VCHIQ_MSG_SRCPORT(msgid),
   VCHIQ_MSG_DSTPORT(msgid));

  for (i = 0, pos = 0; i < (unsigned int)count;
   pos += elements[i++].size)
   if (elements[i].size) {
    if (vchiq_copy_from_user
     (header->data + pos, elements[i].data,
     (size_t) elements[i].size) !=
     VCHIQ_SUCCESS) {
     lmutex_unlock(&state->sync_mutex);
     VCHIQ_SERVICE_STATS_INC(service,
      error_count);
     return VCHIQ_ERROR;
    }
   }

  if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE)
   vchiq_log_dump_mem("Sent Sync",
    0, header->data,
    min(16, pos));

  VCHIQ_SERVICE_STATS_INC(service, ctrl_tx_count);
  VCHIQ_SERVICE_STATS_ADD(service, ctrl_tx_bytes, size);
 } else {
  vchiq_log_info(vchiq_sync_log_level,
   "%d: qms %s@%x,%x (%d->%d)", state->id,
   msg_type_str(VCHIQ_MSG_TYPE(msgid)),
   (unsigned int)header, size,
   VCHIQ_MSG_SRCPORT(msgid),
   VCHIQ_MSG_DSTPORT(msgid));
  if (size != 0) {
   WARN_ON(!((count == 1) && (size == elements[0].size)));
   memcpy(header->data, elements[0].data,
    elements[0].size);
  }
  VCHIQ_STATS_INC(state, ctrl_tx_count);
 }

 header->size = size;
 header->msgid = msgid;

 if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
  int svc_fourcc;

  svc_fourcc = service
   ? service->base.fourcc
   : VCHIQ_MAKE_FOURCC('?', '?', '?', '?');

  vchiq_log_trace(vchiq_sync_log_level,
   "Sent Sync Msg %s(%u) to %c%c%c%c s:%u d:%d len:%d",
   msg_type_str(VCHIQ_MSG_TYPE(msgid)),
   VCHIQ_MSG_TYPE(msgid),
   VCHIQ_FOURCC_AS_4CHARS(svc_fourcc),
   VCHIQ_MSG_SRCPORT(msgid),
   VCHIQ_MSG_DSTPORT(msgid),
   size);
 }


 wmb();

 remote_event_signal(&state->remote->sync_trigger);

 if (VCHIQ_MSG_TYPE(msgid) != VCHIQ_MSG_PAUSE)
  lmutex_unlock(&state->sync_mutex);

 return VCHIQ_SUCCESS;
}
