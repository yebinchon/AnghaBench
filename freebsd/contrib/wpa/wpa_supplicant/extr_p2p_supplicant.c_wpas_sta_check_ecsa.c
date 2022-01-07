
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int ecsa_supported; } ;
struct hostapd_data {int dummy; } ;



__attribute__((used)) static int wpas_sta_check_ecsa(struct hostapd_data *hapd,
          struct sta_info *sta, void *ctx)
{
 int *ecsa_support = ctx;

 *ecsa_support &= sta->ecsa_supported;

 return 0;
}
