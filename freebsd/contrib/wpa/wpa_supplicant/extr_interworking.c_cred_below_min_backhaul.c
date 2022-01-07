
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_cred {unsigned int min_dl_bandwidth_home; unsigned int min_ul_bandwidth_home; unsigned int min_dl_bandwidth_roaming; unsigned int min_ul_bandwidth_roaming; } ;
struct wpa_bss {TYPE_1__* anqp; } ;
struct TYPE_2__ {int * domain_name; int * hs20_wan_metrics; } ;


 int BIT (int) ;
 scalar_t__ WPA_GET_LE16 (int const*) ;
 int WPA_GET_LE32 (int const*) ;
 int interworking_home_sp_cred (struct wpa_supplicant*,struct wpa_cred*,int *) ;
 int* wpabuf_head (int *) ;

__attribute__((used)) static int cred_below_min_backhaul(struct wpa_supplicant *wpa_s,
       struct wpa_cred *cred, struct wpa_bss *bss)
{
 return 0;
}
