
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {unsigned int p2p_group_common_freqs_num; TYPE_1__* go_params; scalar_t__* p2p_group_common_freqs; } ;
struct p2p_go_neg_results {int dummy; } ;
struct TYPE_2__ {scalar_t__* freq_list; } ;


 unsigned int int_array_len (scalar_t__*) ;
 scalar_t__* os_calloc (unsigned int,int) ;
 int os_free (scalar_t__*) ;

__attribute__((used)) static void p2p_go_save_group_common_freqs(struct wpa_supplicant *wpa_s,
        struct p2p_go_neg_results *params)
{
 unsigned int i, len = int_array_len(wpa_s->go_params->freq_list);

 wpa_s->p2p_group_common_freqs_num = 0;
 os_free(wpa_s->p2p_group_common_freqs);
 wpa_s->p2p_group_common_freqs = os_calloc(len, sizeof(int));
 if (!wpa_s->p2p_group_common_freqs)
  return;

 for (i = 0; i < len; i++) {
  if (!wpa_s->go_params->freq_list[i])
   break;
  wpa_s->p2p_group_common_freqs[i] =
   wpa_s->go_params->freq_list[i];
 }
 wpa_s->p2p_group_common_freqs_num = i;
}
