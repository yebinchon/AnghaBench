
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 scalar_t__ autoscan_init (struct wpa_supplicant*,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static void wpa_supplicant_start_autoscan(struct wpa_supplicant *wpa_s)
{
 if (autoscan_init(wpa_s, 0))
  wpa_dbg(wpa_s, MSG_DEBUG, "Failed to initialize autoscan");
}
