
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int local_tx_pos; char* tx_data; int slot_queue_available; int slot_available_event; TYPE_1__* remote; TYPE_3__* local; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_11__ {int tx_pos; int* slot_queue; } ;
typedef TYPE_3__ VCHIQ_SHARED_STATE_T ;
struct TYPE_12__ {int size; int msgid; } ;
typedef TYPE_4__ VCHIQ_HEADER_T ;
struct TYPE_9__ {int trigger; } ;


 int BUG_ON (int) ;
 scalar_t__ SLOT_DATA_FROM_INDEX (TYPE_2__*,int) ;
 size_t SLOT_QUEUE_INDEX_FROM_POS (int) ;
 int VCHIQ_MSGID_PADDING ;
 int VCHIQ_SLOT_MASK ;
 size_t VCHIQ_SLOT_QUEUE_MASK ;
 int VCHIQ_SLOT_SIZE ;
 int VCHIQ_STATS_INC (TYPE_2__*,int ) ;
 int WARN_ON (int ) ;
 scalar_t__ down_interruptible (int *) ;
 scalar_t__ down_trylock (int *) ;
 int remote_event_signal (int *) ;
 int slot_stalls ;

__attribute__((used)) static VCHIQ_HEADER_T *
reserve_space(VCHIQ_STATE_T *state, int space, int is_blocking)
{
 VCHIQ_SHARED_STATE_T *local = state->local;
 int tx_pos = state->local_tx_pos;
 int slot_space = VCHIQ_SLOT_SIZE - (tx_pos & VCHIQ_SLOT_MASK);

 if (space > slot_space) {
  VCHIQ_HEADER_T *header;

  WARN_ON(state->tx_data == ((void*)0));
  header = (VCHIQ_HEADER_T *)
   (state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
  header->msgid = VCHIQ_MSGID_PADDING;
  header->size = slot_space - sizeof(VCHIQ_HEADER_T);

  tx_pos += slot_space;
 }


 if ((tx_pos & VCHIQ_SLOT_MASK) == 0) {
  int slot_index;



  if (down_trylock(&state->slot_available_event) != 0) {


   VCHIQ_STATS_INC(state, slot_stalls);


   state->local_tx_pos = tx_pos;
   local->tx_pos = tx_pos;
   remote_event_signal(&state->remote->trigger);

   if (!is_blocking ||
    (down_interruptible(
    &state->slot_available_event) != 0))
    return ((void*)0);
  }

  BUG_ON(tx_pos ==
   (state->slot_queue_available * VCHIQ_SLOT_SIZE));

  slot_index = local->slot_queue[
   SLOT_QUEUE_INDEX_FROM_POS(tx_pos) &
   VCHIQ_SLOT_QUEUE_MASK];
  state->tx_data =
   (char *)SLOT_DATA_FROM_INDEX(state, slot_index);
 }

 state->local_tx_pos = tx_pos + space;

 return (VCHIQ_HEADER_T *)(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
}
