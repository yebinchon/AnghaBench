
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_rate_data {int flags; int rate; } ;
struct hostapd_iface {size_t num_rates; TYPE_1__* conf; struct hostapd_rate_data* current_rates; struct hostapd_rate_data* basic_rates; } ;
struct hostapd_hw_modes {int mode; int num_rates; int * rates; } ;
struct TYPE_2__ {int* basic_rates; int* supported_rates; int require_ht; int ieee80211n; } ;






 int HOSTAPD_RATE_BASIC ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ hostapd_rate_found (int*,int ) ;
 struct hostapd_rate_data* os_calloc (int,int) ;
 int os_free (struct hostapd_rate_data*) ;
 struct hostapd_rate_data* os_malloc (int) ;
 int os_memcpy (struct hostapd_rate_data*,int*,int) ;
 int wpa_printf (int ,char*,...) ;

int hostapd_prepare_rates(struct hostapd_iface *iface,
     struct hostapd_hw_modes *mode)
{
 int i, num_basic_rates = 0;
 int basic_rates_a[] = { 60, 120, 240, -1 };
 int basic_rates_b[] = { 10, 20, -1 };
 int basic_rates_g[] = { 10, 20, 55, 110, -1 };
 int *basic_rates;

 if (iface->conf->basic_rates)
  basic_rates = iface->conf->basic_rates;
 else switch (mode->mode) {
 case 131:
  basic_rates = basic_rates_a;
  break;
 case 129:
  basic_rates = basic_rates_b;
  break;
 case 128:
  basic_rates = basic_rates_g;
  break;
 case 130:
  return 0;
 default:
  return -1;
 }

 i = 0;
 while (basic_rates[i] >= 0)
  i++;
 if (i)
  i++;
 os_free(iface->basic_rates);
 iface->basic_rates = os_malloc(i * sizeof(int));
 if (iface->basic_rates)
  os_memcpy(iface->basic_rates, basic_rates, i * sizeof(int));

 os_free(iface->current_rates);
 iface->num_rates = 0;

 iface->current_rates =
  os_calloc(mode->num_rates, sizeof(struct hostapd_rate_data));
 if (!iface->current_rates) {
  wpa_printf(MSG_ERROR, "Failed to allocate memory for rate "
      "table.");
  return -1;
 }

 for (i = 0; i < mode->num_rates; i++) {
  struct hostapd_rate_data *rate;

  if (iface->conf->supported_rates &&
      !hostapd_rate_found(iface->conf->supported_rates,
     mode->rates[i]))
   continue;

  rate = &iface->current_rates[iface->num_rates];
  rate->rate = mode->rates[i];
  if (hostapd_rate_found(basic_rates, rate->rate)) {
   rate->flags |= HOSTAPD_RATE_BASIC;
   num_basic_rates++;
  }
  wpa_printf(MSG_DEBUG, "RATE[%d] rate=%d flags=0x%x",
      iface->num_rates, rate->rate, rate->flags);
  iface->num_rates++;
 }

 if ((iface->num_rates == 0 || num_basic_rates == 0) &&
     (!iface->conf->ieee80211n || !iface->conf->require_ht)) {
  wpa_printf(MSG_ERROR, "No rates remaining in supported/basic "
      "rate sets (%d,%d).",
      iface->num_rates, num_basic_rates);
  return -1;
 }

 return 0;
}
