
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int dummy; } ;


 int michael_mic_failure (struct hostapd_data*,int const*,int ) ;

__attribute__((used)) static int hostapd_wpa_auth_mic_failure_report(void *ctx, const u8 *addr)
{
 struct hostapd_data *hapd = ctx;
 return michael_mic_failure(hapd, addr, 0);
}
