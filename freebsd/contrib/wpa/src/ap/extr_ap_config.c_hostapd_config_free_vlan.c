
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_vlan {struct hostapd_vlan* next; } ;
struct hostapd_bss_config {struct hostapd_vlan* vlan; } ;


 int os_free (struct hostapd_vlan*) ;

__attribute__((used)) static void hostapd_config_free_vlan(struct hostapd_bss_config *bss)
{
 struct hostapd_vlan *vlan, *prev;

 vlan = bss->vlan;
 prev = ((void*)0);
 while (vlan) {
  prev = vlan;
  vlan = vlan->next;
  os_free(prev);
 }

 bss->vlan = ((void*)0);
}
