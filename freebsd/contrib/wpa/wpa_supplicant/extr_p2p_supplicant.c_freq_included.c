
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct p2p_channels {int dummy; } ;


 scalar_t__ p2p_channels_includes_freq (struct p2p_channels const*,unsigned int) ;
 scalar_t__ wpas_p2p_go_is_peer_freq (struct wpa_supplicant*,unsigned int) ;

__attribute__((used)) static int freq_included(struct wpa_supplicant *wpa_s,
    const struct p2p_channels *channels,
    unsigned int freq)
{
 if ((channels == ((void*)0) || p2p_channels_includes_freq(channels, freq)) &&
     wpas_p2p_go_is_peer_freq(wpa_s, freq))
  return 1;
 return 0;
}
