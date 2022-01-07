
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int num_multichan_concurrent; } ;


 int MSG_DEBUG ;
 int get_shared_radio_freqs (struct wpa_supplicant*,int*,int) ;
 int* os_calloc (int,int) ;
 int os_free (int*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int) ;

__attribute__((used)) static int wpas_p2p_num_unused_channels(struct wpa_supplicant *wpa_s)
{
 int *freqs;
 int num, unused;

 freqs = os_calloc(wpa_s->num_multichan_concurrent, sizeof(int));
 if (!freqs)
  return -1;

 num = get_shared_radio_freqs(wpa_s, freqs,
         wpa_s->num_multichan_concurrent);
 os_free(freqs);

 unused = wpa_s->num_multichan_concurrent - num;
 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: num_unused_channels: %d", unused);
 return unused;
}
