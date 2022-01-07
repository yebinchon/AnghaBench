
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int p2p_disallow_freq; int p2p_go_avoid_freq; } ;


 int freq_range_list_includes (int *,unsigned int) ;

__attribute__((used)) static int wpas_p2p_disallowed_freq(struct wpa_global *global,
        unsigned int freq)
{
 if (freq_range_list_includes(&global->p2p_go_avoid_freq, freq))
  return 1;
 return freq_range_list_includes(&global->p2p_disallow_freq, freq);
}
