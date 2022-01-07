
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {int state; TYPE_2__* conf; } ;
typedef enum hostapd_iface_state { ____Placeholder_hostapd_iface_state } hostapd_iface_state ;
struct TYPE_4__ {TYPE_1__** bss; } ;
struct TYPE_3__ {char* iface; } ;


 int MSG_INFO ;
 int hostapd_state_text (int) ;
 int wpa_printf (int ,char*,char*,int ,int ) ;

void hostapd_set_state(struct hostapd_iface *iface, enum hostapd_iface_state s)
{
 wpa_printf(MSG_INFO, "%s: interface state %s->%s",
     iface->conf ? iface->conf->bss[0]->iface : "N/A",
     hostapd_state_text(iface->state), hostapd_state_text(s));
 iface->state = s;
}
