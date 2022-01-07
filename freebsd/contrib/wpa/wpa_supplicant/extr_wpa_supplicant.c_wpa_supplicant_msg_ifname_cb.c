
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {char const* ifname; } ;



__attribute__((used)) static const char * wpa_supplicant_msg_ifname_cb(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;
 if (wpa_s == ((void*)0))
  return ((void*)0);
 return wpa_s->ifname;
}
