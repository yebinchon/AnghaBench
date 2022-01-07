
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {char const* iface; } ;



__attribute__((used)) static const char * hostapd_msg_ifname_cb(void *ctx)
{
 struct hostapd_data *hapd = ctx;
 if (hapd && hapd->conf)
  return hapd->conf->iface;
 return ((void*)0);
}
