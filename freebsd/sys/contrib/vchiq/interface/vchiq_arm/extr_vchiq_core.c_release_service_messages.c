
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {char* rx_data; unsigned int rx_pos; TYPE_1__* remote; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_17__ {scalar_t__ release_count; scalar_t__ use_count; } ;
typedef TYPE_3__ VCHIQ_SLOT_INFO_T ;
struct TYPE_18__ {scalar_t__ localport; scalar_t__ sync; TYPE_2__* state; } ;
typedef TYPE_4__ VCHIQ_SERVICE_T ;
struct TYPE_19__ {int msgid; int size; } ;
typedef TYPE_5__ VCHIQ_HEADER_T ;
struct TYPE_15__ {int slot_last; int slot_sync; int slot_first; } ;


 scalar_t__ SLOT_DATA_FROM_INDEX (TYPE_2__*,int) ;
 TYPE_3__* SLOT_INFO_FROM_INDEX (TYPE_2__*,int) ;
 int VCHIQ_MSGID_CLAIMED ;
 scalar_t__ VCHIQ_MSG_DSTPORT (int) ;
 unsigned int VCHIQ_SLOT_MASK ;
 unsigned int VCHIQ_SLOT_SIZE ;
 int WARN (int,char*) ;
 scalar_t__ calc_stride (int ) ;
 int release_message_sync (TYPE_2__*,TYPE_5__*) ;
 int release_slot (TYPE_2__*,TYPE_3__*,TYPE_5__*,int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,unsigned int,unsigned int,int,int,int ) ;
 int vchiq_log_info (int ,char*,unsigned int) ;

__attribute__((used)) static void
release_service_messages(VCHIQ_SERVICE_T *service)
{
 VCHIQ_STATE_T *state = service->state;
 int slot_last = state->remote->slot_last;
 int i;



 if (service->sync) {
  VCHIQ_HEADER_T *header =
   (VCHIQ_HEADER_T *)SLOT_DATA_FROM_INDEX(state,
      state->remote->slot_sync);
  if (VCHIQ_MSG_DSTPORT(header->msgid) == service->localport)
   release_message_sync(state, header);

  return;
 }

 for (i = state->remote->slot_first; i <= slot_last; i++) {
  VCHIQ_SLOT_INFO_T *slot_info =
   SLOT_INFO_FROM_INDEX(state, i);
  if (slot_info->release_count != slot_info->use_count) {
   char *data =
    (char *)SLOT_DATA_FROM_INDEX(state, i);
   unsigned int pos, end;

   end = VCHIQ_SLOT_SIZE;
   if (data == state->rx_data)


    end = state->rx_pos & VCHIQ_SLOT_MASK;

   pos = 0;

   while (pos < end) {
    VCHIQ_HEADER_T *header =
     (VCHIQ_HEADER_T *)(data + pos);
    int msgid = header->msgid;
    int port = VCHIQ_MSG_DSTPORT(msgid);
    if ((port == service->localport) &&
     (msgid & VCHIQ_MSGID_CLAIMED)) {
     vchiq_log_info(vchiq_core_log_level,
      "  fsi - hdr %x",
      (unsigned int)header);
     release_slot(state, slot_info, header,
      ((void*)0));
    }
    pos += calc_stride(header->size);
    if (pos > VCHIQ_SLOT_SIZE) {
     vchiq_log_error(vchiq_core_log_level,
      "fsi - pos %x: header %x, "
      "msgid %x, header->msgid %x, "
      "header->size %x",
      pos, (unsigned int)header,
      msgid, header->msgid,
      header->size);
     WARN(1, "invalid slot position\n");
    }
   }
  }
 }
}
