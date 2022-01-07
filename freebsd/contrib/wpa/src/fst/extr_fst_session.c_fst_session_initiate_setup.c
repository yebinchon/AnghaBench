
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_3__ {int length; int new_band_op; int old_band_op; scalar_t__ old_band_setup; void* old_band_id; scalar_t__ new_band_setup; void* new_band_id; int session_control; void* fsts_id; int element_id; } ;
struct fst_setup_req {TYPE_1__ stie; void* llt; void* dialog_token; int action; } ;
struct TYPE_4__ {scalar_t__ old_iface; scalar_t__ new_iface; void* pending_setup_req_dlgt; int fsts_id; int llt_ms; int new_peer_addr; int old_peer_addr; } ;
struct fst_session {TYPE_2__ data; int group; int id; } ;
typedef int req ;


 int EINVAL ;
 int FALSE ;
 int FST_ACTION_SETUP_REQUEST ;
 int FST_LLT_MS_TO_VAL (int ) ;
 int FST_SESSION_STATE_SETUP_COMPLETION ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int SESSION_CONTROL (int ,int ) ;
 int SESSION_TYPE_BSS ;
 int TRUE ;
 int WLAN_EID_SESSION_TRANSITION ;
 struct fst_session* fst_find_session_in_progress (int ,int ) ;
 void* fst_group_assign_dialog_token (int ) ;
 int fst_group_assign_fsts_id (int ) ;
 void* fst_iface_get_band_id (scalar_t__) ;
 int fst_iface_get_mbie (scalar_t__) ;
 int fst_iface_get_name (scalar_t__) ;
 int fst_iface_is_connected (scalar_t__,int ,int ) ;
 int fst_printf_session (struct fst_session*,int ,char*,...) ;
 int fst_printf_sframe (struct fst_session*,int ,int ,char*) ;
 int fst_printf_siface (struct fst_session*,scalar_t__,int ,char*,int ,int ) ;
 scalar_t__ fst_session_is_in_progress (struct fst_session*) ;
 int fst_session_send_action (struct fst_session*,int ,struct fst_setup_req*,int,int ) ;
 int fst_session_set_state (struct fst_session*,int ,int *) ;
 int fst_session_stt_arm (struct fst_session*) ;
 void* host_to_le32 (int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int os_memset (struct fst_setup_req*,int ,int) ;

int fst_session_initiate_setup(struct fst_session *s)
{
 struct fst_setup_req req;
 int res;
 u32 fsts_id;
 u8 dialog_token;
 struct fst_session *_s;

 if (fst_session_is_in_progress(s)) {
  fst_printf_session(s, MSG_ERROR, "Session in progress");
  return -EINVAL;
 }

 if (is_zero_ether_addr(s->data.old_peer_addr)) {
  fst_printf_session(s, MSG_ERROR, "No old peer MAC address");
  return -EINVAL;
 }

 if (is_zero_ether_addr(s->data.new_peer_addr)) {
  fst_printf_session(s, MSG_ERROR, "No new peer MAC address");
  return -EINVAL;
 }

 if (!s->data.old_iface) {
  fst_printf_session(s, MSG_ERROR, "No old interface defined");
  return -EINVAL;
 }

 if (!s->data.new_iface) {
  fst_printf_session(s, MSG_ERROR, "No new interface defined");
  return -EINVAL;
 }

 if (s->data.new_iface == s->data.old_iface) {
  fst_printf_session(s, MSG_ERROR,
       "Same interface set as old and new");
  return -EINVAL;
 }

 if (!fst_iface_is_connected(s->data.old_iface, s->data.old_peer_addr,
        FALSE)) {
  fst_printf_session(s, MSG_ERROR,
       "The preset old peer address is not connected");
  return -EINVAL;
 }

 if (!fst_iface_is_connected(s->data.new_iface, s->data.new_peer_addr,
        FALSE)) {
  fst_printf_session(s, MSG_ERROR,
       "The preset new peer address is not connected");
  return -EINVAL;
 }

 _s = fst_find_session_in_progress(s->data.old_peer_addr, s->group);
 if (_s) {
  fst_printf_session(s, MSG_ERROR,
       "There is another session in progress (old): %u",
       _s->id);
  return -EINVAL;
 }

 _s = fst_find_session_in_progress(s->data.new_peer_addr, s->group);
 if (_s) {
  fst_printf_session(s, MSG_ERROR,
       "There is another session in progress (new): %u",
       _s->id);
  return -EINVAL;
 }

 dialog_token = fst_group_assign_dialog_token(s->group);
 fsts_id = fst_group_assign_fsts_id(s->group);

 os_memset(&req, 0, sizeof(req));

 fst_printf_siface(s, s->data.old_iface, MSG_INFO,
  "initiating FST setup for %s (llt=%u ms)",
  fst_iface_get_name(s->data.new_iface), s->data.llt_ms);

 req.action = FST_ACTION_SETUP_REQUEST;
 req.dialog_token = dialog_token;
 req.llt = host_to_le32(FST_LLT_MS_TO_VAL(s->data.llt_ms));

 req.stie.element_id = WLAN_EID_SESSION_TRANSITION;
 req.stie.length = sizeof(req.stie) - 2;
 req.stie.fsts_id = host_to_le32(fsts_id);
 req.stie.session_control = SESSION_CONTROL(SESSION_TYPE_BSS, 0);

 req.stie.new_band_id = fst_iface_get_band_id(s->data.new_iface);
 req.stie.new_band_op = 1;
 req.stie.new_band_setup = 0;

 req.stie.old_band_id = fst_iface_get_band_id(s->data.old_iface);
 req.stie.old_band_op = 1;
 req.stie.old_band_setup = 0;

 res = fst_session_send_action(s, TRUE, &req, sizeof(req),
          fst_iface_get_mbie(s->data.old_iface));
 if (!res) {
  s->data.fsts_id = fsts_id;
  s->data.pending_setup_req_dlgt = dialog_token;
  fst_printf_sframe(s, TRUE, MSG_INFO, "FST Setup Request sent");
  fst_session_set_state(s, FST_SESSION_STATE_SETUP_COMPLETION,
          ((void*)0));

  fst_session_stt_arm(s);
 }

 return res;
}
