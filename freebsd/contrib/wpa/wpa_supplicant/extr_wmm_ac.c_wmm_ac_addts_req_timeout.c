
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wmm_ac_addts_request {int tspec; } ;


 int MSG_DEBUG ;
 int wmm_ac_del_req (struct wpa_supplicant*,int) ;
 int wmm_ac_get_tsid (int *) ;
 int wmm_ac_get_user_priority (int *) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void wmm_ac_addts_req_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct wmm_ac_addts_request *addts_req = timeout_ctx;

 wpa_printf(MSG_DEBUG,
     "Timeout getting ADDTS response (tsid=%d up=%d)",
     wmm_ac_get_tsid(&addts_req->tspec),
     wmm_ac_get_user_priority(&addts_req->tspec));

 wmm_ac_del_req(wpa_s, 1);
}
