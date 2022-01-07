
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int disabled; scalar_t__ p2p_persistent_group; } ;



__attribute__((used)) static inline int network_is_persistent_group(struct wpa_ssid *ssid)
{
 return ssid->disabled == 2 && ssid->p2p_persistent_group;
}
