
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int* p2p_group_common_freqs; unsigned int p2p_group_common_freqs_num; int p2p_group; } ;


 int MSG_DEBUG ;
 unsigned int P2P_MAX_CHANNELS ;
 int* os_calloc (unsigned int,int) ;
 int os_free (int*) ;
 int p2p_go_dump_common_freqs (struct wpa_supplicant*) ;
 int p2p_group_get_common_freqs (int ,int*,unsigned int*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static void wpas_p2p_go_update_common_freqs(struct wpa_supplicant *wpa_s)
{
 unsigned int num = P2P_MAX_CHANNELS;
 int *common_freqs;
 int ret;

 p2p_go_dump_common_freqs(wpa_s);
 common_freqs = os_calloc(num, sizeof(int));
 if (!common_freqs)
  return;

 ret = p2p_group_get_common_freqs(wpa_s->p2p_group, common_freqs, &num);
 if (ret < 0) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Failed to get group common freqs");
  os_free(common_freqs);
  return;
 }

 os_free(wpa_s->p2p_group_common_freqs);
 wpa_s->p2p_group_common_freqs = common_freqs;
 wpa_s->p2p_group_common_freqs_num = num;
 p2p_go_dump_common_freqs(wpa_s);
}
