
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {struct ap_info** ap_hash; } ;
struct ap_info {int addr; struct ap_info* hnext; } ;


 size_t STA_HASH (int ) ;

__attribute__((used)) static void ap_ap_hash_add(struct hostapd_iface *iface, struct ap_info *ap)
{
 ap->hnext = iface->ap_hash[STA_HASH(ap->addr)];
 iface->ap_hash[STA_HASH(ap->addr)] = ap;
}
