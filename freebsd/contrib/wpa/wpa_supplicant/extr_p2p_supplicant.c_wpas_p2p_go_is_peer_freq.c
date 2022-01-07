
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int p2p_group_common_freqs_num; int* p2p_group_common_freqs; } ;


 int p2p_go_dump_common_freqs (struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_p2p_go_is_peer_freq(struct wpa_supplicant *wpa_s, int freq)
{
 unsigned int i;

 p2p_go_dump_common_freqs(wpa_s);


 if (!wpa_s->p2p_group_common_freqs_num)
  return 1;

 for (i = 0; i < wpa_s->p2p_group_common_freqs_num; i++) {
  if (wpa_s->p2p_group_common_freqs[i] == freq)
   return 1;
 }
 return 0;
}
