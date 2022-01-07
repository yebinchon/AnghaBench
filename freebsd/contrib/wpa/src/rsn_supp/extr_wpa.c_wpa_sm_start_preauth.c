
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int dummy; } ;


 int rsn_preauth_candidate_process (struct wpa_sm*) ;

__attribute__((used)) static void wpa_sm_start_preauth(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_sm *sm = eloop_ctx;
 rsn_preauth_candidate_process(sm);
}
