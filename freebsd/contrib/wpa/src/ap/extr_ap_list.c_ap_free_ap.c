
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int num_ap; } ;
struct ap_info {int dummy; } ;


 int ap_ap_hash_del (struct hostapd_iface*,struct ap_info*) ;
 int ap_ap_list_del (struct hostapd_iface*,struct ap_info*) ;
 int os_free (struct ap_info*) ;

__attribute__((used)) static void ap_free_ap(struct hostapd_iface *iface, struct ap_info *ap)
{
 ap_ap_hash_del(iface, ap);
 ap_ap_list_del(iface, ap);

 iface->num_ap--;
 os_free(ap);
}
