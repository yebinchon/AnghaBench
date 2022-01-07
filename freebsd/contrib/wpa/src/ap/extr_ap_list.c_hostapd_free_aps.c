
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {struct ap_info* ap_list; } ;
struct ap_info {struct ap_info* next; } ;


 int ap_free_ap (struct hostapd_iface*,struct ap_info*) ;

__attribute__((used)) static void hostapd_free_aps(struct hostapd_iface *iface)
{
 struct ap_info *ap, *prev;

 ap = iface->ap_list;

 while (ap) {
  prev = ap;
  ap = ap->next;
  ap_free_ap(iface, prev);
 }

 iface->ap_list = ((void*)0);
}
