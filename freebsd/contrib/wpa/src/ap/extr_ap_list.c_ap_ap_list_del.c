
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {struct ap_info* ap_list; } ;
struct ap_info {TYPE_1__* prev; struct ap_info* next; } ;
struct TYPE_2__ {struct ap_info* next; } ;



__attribute__((used)) static void ap_ap_list_del(struct hostapd_iface *iface, struct ap_info *ap)
{
 if (iface->ap_list == ap)
  iface->ap_list = ap->next;
 else
  ap->prev->next = ap->next;

 if (ap->next)
  ap->next->prev = ap->prev;
 else if (iface->ap_list)
  iface->ap_list->prev = ap->prev;
}
