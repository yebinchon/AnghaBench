
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ibss_rsn {int wpa_s; } ;


 int wpa_drv_sta_deauth (int ,int const*,int ) ;

__attribute__((used)) static void ibss_rsn_disconnect(void *ctx, const u8 *addr, u16 reason)
{
 struct ibss_rsn *ibss_rsn = ctx;
 wpa_drv_sta_deauth(ibss_rsn->wpa_s, addr, reason);
}
