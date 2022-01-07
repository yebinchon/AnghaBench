
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpas_p2p_listen_work {int dummy; } ;
struct wpa_supplicant {TYPE_1__* p2p_listen_work; } ;
struct TYPE_2__ {struct wpas_p2p_listen_work* ctx; } ;


 int radio_work_done (TYPE_1__*) ;
 int wpas_p2p_listen_work_free (struct wpas_p2p_listen_work*) ;

__attribute__((used)) static void wpas_p2p_listen_work_done(struct wpa_supplicant *wpa_s)
{
 struct wpas_p2p_listen_work *lwork;

 if (!wpa_s->p2p_listen_work)
  return;

 lwork = wpa_s->p2p_listen_work->ctx;
 wpas_p2p_listen_work_free(lwork);
 radio_work_done(wpa_s->p2p_listen_work);
 wpa_s->p2p_listen_work = ((void*)0);
}
