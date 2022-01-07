
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_iface {struct ap_info** ap_hash; } ;
struct ap_info {struct ap_info* hnext; int addr; } ;


 int ETH_ALEN ;
 size_t STA_HASH (int const*) ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

__attribute__((used)) static struct ap_info * ap_get_ap(struct hostapd_iface *iface, const u8 *ap)
{
 struct ap_info *s;

 s = iface->ap_hash[STA_HASH(ap)];
 while (s != ((void*)0) && os_memcmp(s->addr, ap, ETH_ALEN) != 0)
  s = s->hnext;
 return s;
}
