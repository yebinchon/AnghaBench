
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int iface; } ;


 int hostapd_get_seqnum (int ,struct hostapd_data*,int const*,int,int *) ;

__attribute__((used)) static int hostapd_wpa_auth_get_seqnum(void *ctx, const u8 *addr, int idx,
           u8 *seq)
{
 struct hostapd_data *hapd = ctx;
 return hostapd_get_seqnum(hapd->conf->iface, hapd, addr, idx, seq);
}
