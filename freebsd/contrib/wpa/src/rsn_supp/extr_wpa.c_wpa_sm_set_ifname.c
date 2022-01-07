
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {char const* ifname; char const* bridge_ifname; } ;



void wpa_sm_set_ifname(struct wpa_sm *sm, const char *ifname,
         const char *bridge_ifname)
{
 if (sm) {
  sm->ifname = ifname;
  sm->bridge_ifname = bridge_ifname;
 }
}
