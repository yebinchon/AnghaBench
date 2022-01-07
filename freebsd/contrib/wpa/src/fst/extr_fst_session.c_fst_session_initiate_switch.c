
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int fsts_id; int * new_iface; int * old_iface; } ;
struct fst_session {TYPE_1__ data; int group; int state; } ;
struct fst_ack_req {int fsts_id; int dialog_token; int action; } ;
typedef int req ;


 int FALSE ;
 int FST_ACTION_ACK_REQUEST ;
 int FST_SESSION_STATE_TRANSITION_DONE ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int WPA_ASSERT (int ) ;
 int fst_group_assign_dialog_token (int ) ;
 int fst_iface_get_name (int *) ;
 int fst_printf_session (struct fst_session*,int ,char*,int ,...) ;
 int fst_printf_sframe (struct fst_session*,int ,int ,char*) ;
 int fst_session_is_ready (struct fst_session*) ;
 int fst_session_send_action (struct fst_session*,int ,struct fst_ack_req*,int,int *) ;
 int fst_session_set_state (struct fst_session*,int ,int *) ;
 int fst_session_stt_arm (struct fst_session*) ;
 int host_to_le32 (int ) ;
 int os_memset (struct fst_ack_req*,int ,int) ;

int fst_session_initiate_switch(struct fst_session *s)
{
 struct fst_ack_req req;
 int res;
 u8 dialog_token;

 if (!fst_session_is_ready(s)) {
  fst_printf_session(s, MSG_ERROR,
       "cannot initiate switch due to wrong setup state (%d)",
       s->state);
  return -1;
 }

 dialog_token = fst_group_assign_dialog_token(s->group);

 WPA_ASSERT(s->data.new_iface != ((void*)0));
 WPA_ASSERT(s->data.old_iface != ((void*)0));

 fst_printf_session(s, MSG_INFO, "initiating FST switch: %s => %s",
      fst_iface_get_name(s->data.old_iface),
      fst_iface_get_name(s->data.new_iface));

 os_memset(&req, 0, sizeof(req));

 req.action = FST_ACTION_ACK_REQUEST;
 req.dialog_token = dialog_token;
 req.fsts_id = host_to_le32(s->data.fsts_id);

 res = fst_session_send_action(s, FALSE, &req, sizeof(req), ((void*)0));
 if (!res) {
  fst_printf_sframe(s, FALSE, MSG_INFO, "FST Ack Request sent");
  fst_session_set_state(s, FST_SESSION_STATE_TRANSITION_DONE,
          ((void*)0));
  fst_session_stt_arm(s);
 } else {
  fst_printf_sframe(s, FALSE, MSG_ERROR,
      "Cannot send FST Ack Request");
 }

 return res;
}
