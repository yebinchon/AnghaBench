
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct TYPE_4__ {int category; } ;
struct TYPE_3__ {TYPE_2__ action; } ;
struct ieee80211_mgmt {TYPE_1__ u; int bssid; int sa; int da; } ;


 int IEEE80211_HDRLEN ;
 int wpas_p2p_rx_action (struct wpa_supplicant*,int ,int ,int ,int ,int const*,size_t,int) ;

__attribute__((used)) static int ap_vendor_action_rx(void *ctx, const u8 *buf, size_t len, int freq)
{
 return 0;
}
