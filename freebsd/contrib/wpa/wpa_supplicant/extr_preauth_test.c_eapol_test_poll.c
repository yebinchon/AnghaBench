
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa; } ;


 int eloop_register_timeout (int ,int,void (*) (void*,void*),void*,void*) ;
 int eloop_terminate () ;
 int rsn_preauth_in_progress (int ) ;

__attribute__((used)) static void eapol_test_poll(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 if (!rsn_preauth_in_progress(wpa_s->wpa))
  eloop_terminate();
 else {
  eloop_register_timeout(0, 100000, eapol_test_poll, eloop_ctx,
           timeout_ctx);
 }
}
