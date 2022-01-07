
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int action; } ;
struct TYPE_6__ {TYPE_1__ fst_action; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; } ;
struct fst_session {int dummy; } ;
struct fst_iface {int dummy; } ;


 int FALSE ;






 int MSG_ERROR ;
 int WPA_ASSERT (int ) ;
 int fst_printf_sframe (struct fst_session*,int ,int ,char*) ;
 int fst_session_handle_ack_request (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ;
 int fst_session_handle_ack_response (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ;
 int fst_session_handle_setup_response (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ;
 int fst_session_handle_tear_down (struct fst_session*,struct fst_iface*,struct ieee80211_mgmt const*,size_t) ;

void fst_session_handle_action(struct fst_session *s,
          struct fst_iface *iface,
          const struct ieee80211_mgmt *mgmt,
          size_t frame_len)
{
 switch (mgmt->u.action.u.fst_action.action) {
 case 130:
  WPA_ASSERT(0);
  break;
 case 129:
  fst_session_handle_setup_response(s, iface, mgmt, frame_len);
  break;
 case 128:
  fst_session_handle_tear_down(s, iface, mgmt, frame_len);
  break;
 case 133:
  fst_session_handle_ack_request(s, iface, mgmt, frame_len);
  break;
 case 132:
  fst_session_handle_ack_response(s, iface, mgmt, frame_len);
  break;
 case 131:
 default:
  fst_printf_sframe(s, FALSE, MSG_ERROR,
      "Unsupported FST Action frame");
  break;
 }
}
