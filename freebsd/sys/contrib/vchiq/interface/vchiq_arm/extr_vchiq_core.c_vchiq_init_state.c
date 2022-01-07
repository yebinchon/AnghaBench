
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int threadname ;
typedef int VCHIQ_STATUS_T ;
struct TYPE_15__ {int id; int is_master; int slot_queue_available; int default_slot_quota; int previous_data_index; int data_quota; int * sync_thread; int * recycle_thread; int * slot_handler_thread; int sync_release_event; int sync_trigger_event; int recycle_event; int trigger_event; scalar_t__ data_use_count; int default_message_quota; int slot_available_event; TYPE_4__* service_quotas; int data_quota_event; int slot_remove_event; int bulk_transfer_mutex; int sync_mutex; int recycle_mutex; int slot_mutex; int mutex; int connect; int * slot_data; TYPE_3__* remote; TYPE_3__* local; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_14__ {int * event; } ;
struct TYPE_17__ {int initialised; int slot_first; int slot_last; int* slot_queue; int slot_queue_recycle; int * debug; TYPE_10__ sync_release; int slot_sync; TYPE_10__ sync_trigger; TYPE_10__ recycle; scalar_t__ tx_pos; TYPE_10__ trigger; } ;
struct TYPE_16__ {scalar_t__ magic; scalar_t__ version; scalar_t__ version_min; int slot_zero_size; TYPE_3__ master; TYPE_3__ slave; int max_slots_per_side; int max_slots; int slot_size; } ;
typedef TYPE_2__ VCHIQ_SLOT_ZERO_T ;
typedef int VCHIQ_SLOT_T ;
typedef TYPE_3__ VCHIQ_SHARED_STATE_T ;
struct TYPE_18__ {int quota_event; } ;
typedef TYPE_4__ VCHIQ_SERVICE_QUOTA_T ;
struct TYPE_19__ {int msgid; } ;
typedef TYPE_5__ VCHIQ_HEADER_T ;


 int BUG_ON (int) ;
 size_t DEBUG_ENTRIES ;
 int DEBUG_MAX ;
 scalar_t__ SLOT_DATA_FROM_INDEX (TYPE_1__*,int ) ;
 int VCHIQ_ERROR ;
 scalar_t__ VCHIQ_MAGIC ;
 int VCHIQ_MAX_SERVICES ;
 int VCHIQ_MAX_SLOTS ;
 int VCHIQ_MAX_SLOTS_PER_SIDE ;
 int VCHIQ_MAX_STATES ;
 int VCHIQ_MSGID_PADDING ;
 int VCHIQ_SLOT_SIZE ;
 scalar_t__ VCHIQ_VERSION ;
 scalar_t__ VCHIQ_VERSION_MIN ;
 int _sema_init (int *,int ) ;
 int lmutex_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int min (unsigned short,unsigned short) ;
 int recycle_func ;
 int remote_event_create (TYPE_10__*) ;
 int remote_event_signal_local (TYPE_10__*) ;
 int set_user_nice (int *,int) ;
 int slot_handler_func ;
 int snprintf (char*,int,char*,int) ;
 int sync_func ;
 int up (int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_warning (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int vchiq_loud_error (char*,...) ;
 int vchiq_loud_error_footer () ;
 int vchiq_loud_error_header () ;
 int vchiq_platform_init_state (TYPE_1__*) ;
 TYPE_1__** vchiq_states ;
 void* vchiq_thread_create (int *,void*,char*) ;
 int wake_up_process (int *) ;

VCHIQ_STATUS_T
vchiq_init_state(VCHIQ_STATE_T *state, VCHIQ_SLOT_ZERO_T *slot_zero,
   int is_master)
{
 VCHIQ_SHARED_STATE_T *local;
 VCHIQ_SHARED_STATE_T *remote;
 VCHIQ_STATUS_T status;
 char threadname[10];
 static int id;
 int i;



 if (slot_zero->magic != VCHIQ_MAGIC) {
  vchiq_loud_error_header();
  vchiq_loud_error("Invalid VCHIQ magic value found.");
  vchiq_loud_error("slot_zero=%x: magic=%x (expected %x)",
   (unsigned int)slot_zero, slot_zero->magic, VCHIQ_MAGIC);
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }

 vchiq_log_warning(vchiq_core_log_level,
  "local ver %d (min %d), remote ver %d.",
  VCHIQ_VERSION, VCHIQ_VERSION_MIN,
  slot_zero->version);

 if (slot_zero->version < VCHIQ_VERSION_MIN) {
  vchiq_loud_error_header();
  vchiq_loud_error("Incompatible VCHIQ versions found.");
  vchiq_loud_error("slot_zero=%x: VideoCore version=%d "
   "(minimum %d)",
   (unsigned int)slot_zero, slot_zero->version,
   VCHIQ_VERSION_MIN);
  vchiq_loud_error("Restart with a newer VideoCore image.");
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }

 if (VCHIQ_VERSION < slot_zero->version_min) {
  vchiq_loud_error_header();
  vchiq_loud_error("Incompatible VCHIQ versions found.");
  vchiq_loud_error("slot_zero=%x: version=%d (VideoCore "
   "minimum %d)",
   (unsigned int)slot_zero, VCHIQ_VERSION,
   slot_zero->version_min);
  vchiq_loud_error("Restart with a newer kernel.");
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }

 if ((slot_zero->slot_zero_size != sizeof(VCHIQ_SLOT_ZERO_T)) ||
   (slot_zero->slot_size != VCHIQ_SLOT_SIZE) ||
   (slot_zero->max_slots != VCHIQ_MAX_SLOTS) ||
   (slot_zero->max_slots_per_side != VCHIQ_MAX_SLOTS_PER_SIDE)) {
  vchiq_loud_error_header();
  if (slot_zero->slot_zero_size != sizeof(VCHIQ_SLOT_ZERO_T))
   vchiq_loud_error("slot_zero=%x: slot_zero_size=%x "
    "(expected %zx)",
    (unsigned int)slot_zero,
    slot_zero->slot_zero_size,
    sizeof(VCHIQ_SLOT_ZERO_T));
  if (slot_zero->slot_size != VCHIQ_SLOT_SIZE)
   vchiq_loud_error("slot_zero=%x: slot_size=%d "
    "(expected %d",
    (unsigned int)slot_zero, slot_zero->slot_size,
    VCHIQ_SLOT_SIZE);
  if (slot_zero->max_slots != VCHIQ_MAX_SLOTS)
   vchiq_loud_error("slot_zero=%x: max_slots=%d "
    "(expected %d)",
    (unsigned int)slot_zero, slot_zero->max_slots,
    VCHIQ_MAX_SLOTS);
  if (slot_zero->max_slots_per_side != VCHIQ_MAX_SLOTS_PER_SIDE)
   vchiq_loud_error("slot_zero=%x: max_slots_per_side=%d "
    "(expected %d)",
    (unsigned int)slot_zero,
    slot_zero->max_slots_per_side,
    VCHIQ_MAX_SLOTS_PER_SIDE);
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }

 if (VCHIQ_VERSION < slot_zero->version)
  slot_zero->version = VCHIQ_VERSION;

 if (is_master) {
  local = &slot_zero->master;
  remote = &slot_zero->slave;
 } else {
  local = &slot_zero->slave;
  remote = &slot_zero->master;
 }

 if (local->initialised) {
  vchiq_loud_error_header();
  if (remote->initialised)
   vchiq_loud_error("local state has already been "
    "initialised");
  else
   vchiq_loud_error("master/slave mismatch - two %ss",
    is_master ? "master" : "slave");
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }

 memset(state, 0, sizeof(VCHIQ_STATE_T));

 state->id = id++;
 state->is_master = is_master;





 state->local = local;
 state->remote = remote;
 state->slot_data = (VCHIQ_SLOT_T *)slot_zero;





 _sema_init(&state->connect, 0);
 lmutex_init(&state->mutex);
 _sema_init(&state->trigger_event, 0);
 _sema_init(&state->recycle_event, 0);
 _sema_init(&state->sync_trigger_event, 0);
 _sema_init(&state->sync_release_event, 0);

 lmutex_init(&state->slot_mutex);
 lmutex_init(&state->recycle_mutex);
 lmutex_init(&state->sync_mutex);
 lmutex_init(&state->bulk_transfer_mutex);

 _sema_init(&state->slot_available_event, 0);
 _sema_init(&state->slot_remove_event, 0);
 _sema_init(&state->data_quota_event, 0);

 state->slot_queue_available = 0;

 for (i = 0; i < VCHIQ_MAX_SERVICES; i++) {
  VCHIQ_SERVICE_QUOTA_T *service_quota =
   &state->service_quotas[i];
  _sema_init(&service_quota->quota_event, 0);
 }

 for (i = local->slot_first; i <= local->slot_last; i++) {
  local->slot_queue[state->slot_queue_available++] = i;
  up(&state->slot_available_event);
 }

 state->default_slot_quota = state->slot_queue_available/2;
 state->default_message_quota =
  min((unsigned short)(state->default_slot_quota * 256),
  (unsigned short)~0);

 state->previous_data_index = -1;
 state->data_use_count = 0;
 state->data_quota = state->slot_queue_available - 1;

 local->trigger.event = &state->trigger_event;
 remote_event_create(&local->trigger);
 local->tx_pos = 0;

 local->recycle.event = &state->recycle_event;
 remote_event_create(&local->recycle);
 local->slot_queue_recycle = state->slot_queue_available;

 local->sync_trigger.event = &state->sync_trigger_event;
 remote_event_create(&local->sync_trigger);

 local->sync_release.event = &state->sync_release_event;
 remote_event_create(&local->sync_release);


 ((VCHIQ_HEADER_T *)SLOT_DATA_FROM_INDEX(state, local->slot_sync))->msgid
  = VCHIQ_MSGID_PADDING;
 remote_event_signal_local(&local->sync_release);

 local->debug[DEBUG_ENTRIES] = DEBUG_MAX;

 status = vchiq_platform_init_state(state);




 snprintf(threadname, sizeof(threadname), "VCHIQ-%d", state->id);
 state->slot_handler_thread = vchiq_thread_create(&slot_handler_func,
  (void *)state,
  threadname);

 if (state->slot_handler_thread == ((void*)0)) {
  vchiq_loud_error_header();
  vchiq_loud_error("couldn't create thread %s", threadname);
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }
 set_user_nice(state->slot_handler_thread, -19);
 wake_up_process(state->slot_handler_thread);

 snprintf(threadname, sizeof(threadname), "VCHIQr-%d", state->id);
 state->recycle_thread = vchiq_thread_create(&recycle_func,
  (void *)state,
  threadname);
 if (state->recycle_thread == ((void*)0)) {
  vchiq_loud_error_header();
  vchiq_loud_error("couldn't create thread %s", threadname);
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }
 set_user_nice(state->recycle_thread, -19);
 wake_up_process(state->recycle_thread);

 snprintf(threadname, sizeof(threadname), "VCHIQs-%d", state->id);
 state->sync_thread = vchiq_thread_create(&sync_func,
  (void *)state,
  threadname);
 if (state->sync_thread == ((void*)0)) {
  vchiq_loud_error_header();
  vchiq_loud_error("couldn't create thread %s", threadname);
  vchiq_loud_error_footer();
  return VCHIQ_ERROR;
 }
 set_user_nice(state->sync_thread, -20);
 wake_up_process(state->sync_thread);

 BUG_ON(state->id >= VCHIQ_MAX_STATES);
 vchiq_states[state->id] = state;


 local->initialised = 1;

 return status;
}
