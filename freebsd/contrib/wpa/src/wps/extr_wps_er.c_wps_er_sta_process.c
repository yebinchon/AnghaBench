
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_sta {int * wps; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int MSG_DEBUG ;
 int WPS_CONTINUE ;
 int WPS_DONE ;
 int eloop_cancel_timeout (int ,struct wps_er_sta*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wps_er_sta*,int *) ;
 int wpa_printf (int ,char*,char*,int) ;
 int wps_deinit (int *) ;
 int wps_er_sta_send_msg (struct wps_er_sta*,struct wpabuf*) ;
 int wps_er_sta_timeout ;
 struct wpabuf* wps_get_msg (int *,int*) ;
 int wps_process_msg (int *,int,struct wpabuf*) ;

__attribute__((used)) static void wps_er_sta_process(struct wps_er_sta *sta, struct wpabuf *msg,
          enum wsc_op_code op_code)
{
 enum wps_process_res res;

 res = wps_process_msg(sta->wps, op_code, msg);
 if (res == WPS_CONTINUE) {
  struct wpabuf *next = wps_get_msg(sta->wps, &op_code);
  if (next)
   wps_er_sta_send_msg(sta, next);
 } else {
  wpa_printf(MSG_DEBUG, "WPS ER: Protocol run %s with the "
      "enrollee (res=%d)",
      res == WPS_DONE ? "succeeded" : "failed", res);
  wps_deinit(sta->wps);
  sta->wps = ((void*)0);
  if (res == WPS_DONE) {

   eloop_cancel_timeout(wps_er_sta_timeout, sta, ((void*)0));
   eloop_register_timeout(10, 0, wps_er_sta_timeout, sta,
            ((void*)0));
  }
 }
}
