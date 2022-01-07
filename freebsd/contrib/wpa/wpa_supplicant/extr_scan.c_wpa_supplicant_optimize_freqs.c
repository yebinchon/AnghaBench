
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int p2p_in_provisioning; int p2p_in_invitation; scalar_t__ p2p_invite_go_freq; scalar_t__ wps_freq; scalar_t__ known_wps_freq; scalar_t__ after_wps; TYPE_1__* go_params; } ;
struct wpa_driver_scan_params {scalar_t__* freqs; } ;
struct TYPE_2__ {scalar_t__ freq; scalar_t__* freq_list; } ;


 int MSG_DEBUG ;
 int int_array_concat (scalar_t__**,scalar_t__*) ;
 int int_array_sort_unique (scalar_t__*) ;
 void* os_calloc (int,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;

__attribute__((used)) static void wpa_supplicant_optimize_freqs(
 struct wpa_supplicant *wpa_s, struct wpa_driver_scan_params *params)
{
}
