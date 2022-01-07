
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct TYPE_3__ {scalar_t__ category; } ;
struct TYPE_4__ {TYPE_1__ action; } ;
struct ieee80211_mgmt {TYPE_2__ u; int bssid; int sa; int da; } ;


 int IEEE80211_HDRLEN ;
 scalar_t__ WLAN_ACTION_PUBLIC ;
 int wpas_p2p_rx_action (struct wpa_supplicant*,int ,int ,int ,scalar_t__,int const*,size_t,int) ;

__attribute__((used)) static void ap_public_action_rx(void *ctx, const u8 *buf, size_t len, int freq)
{
}
