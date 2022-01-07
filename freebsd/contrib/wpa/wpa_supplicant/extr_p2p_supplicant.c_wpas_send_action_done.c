
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* p2p_send_action_work; } ;
struct TYPE_2__ {int ctx; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int os_free (int ) ;
 int radio_work_done (TYPE_1__*) ;
 int wpas_p2p_send_action_work_timeout ;

__attribute__((used)) static void wpas_send_action_done(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;

 if (wpa_s->p2p_send_action_work) {
  eloop_cancel_timeout(wpas_p2p_send_action_work_timeout,
         wpa_s, ((void*)0));
  os_free(wpa_s->p2p_send_action_work->ctx);
  radio_work_done(wpa_s->p2p_send_action_work);
  wpa_s->p2p_send_action_work = ((void*)0);
 }

 offchannel_send_action_done(wpa_s);
}
