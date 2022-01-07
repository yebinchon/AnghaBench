
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * go_params; } ;
struct p2p_go_neg_results {int dummy; } ;


 int * os_malloc (int) ;
 int os_memcpy (int *,struct p2p_go_neg_results*,int) ;

__attribute__((used)) static int wpas_copy_go_neg_results(struct wpa_supplicant *wpa_s,
        struct p2p_go_neg_results *params)
{
 if (wpa_s->go_params == ((void*)0)) {
  wpa_s->go_params = os_malloc(sizeof(*params));
  if (wpa_s->go_params == ((void*)0))
   return -1;
 }
 os_memcpy(wpa_s->go_params, params, sizeof(*params));
 return 0;
}
