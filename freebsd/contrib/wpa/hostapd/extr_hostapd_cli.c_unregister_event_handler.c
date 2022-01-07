
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int ctrl_conn ;
 int eloop_unregister_read_sock (int ) ;
 scalar_t__ event_handler_registered ;
 scalar_t__ interactive ;
 int wpa_ctrl_get_fd (struct wpa_ctrl*) ;

__attribute__((used)) static void unregister_event_handler(struct wpa_ctrl *ctrl)
{
 if (!ctrl_conn)
  return;
 if (interactive && event_handler_registered) {
  eloop_unregister_read_sock(wpa_ctrl_get_fd(ctrl));
  event_handler_registered = 0;
 }
}
