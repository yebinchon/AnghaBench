
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; TYPE_1__* conf; } ;
struct hostapd_data {unsigned int num_backlogged_sta; int airtime_weight; TYPE_2__* conf; int started; } ;
struct TYPE_4__ {unsigned int airtime_weight; scalar_t__ airtime_limit; } ;
struct TYPE_3__ {scalar_t__ airtime_mode; } ;
typedef int Boolean ;


 scalar_t__ AIRTIME_MODE_DYNAMIC ;
 int FALSE ;
 int TRUE ;
 int count_backlogged_sta (struct hostapd_data*) ;
 int eloop_register_timeout (unsigned int,unsigned int,void (*) (void*,void*),struct hostapd_iface*,int *) ;
 scalar_t__ get_airtime_policy_update_timeout (struct hostapd_iface*,unsigned int*,unsigned int*) ;
 unsigned int get_airtime_quantum (int) ;
 int set_sta_weights (struct hostapd_data*,unsigned int) ;

__attribute__((used)) static void update_airtime_weights(void *eloop_data, void *user_data)
{
 struct hostapd_iface *iface = eloop_data;
 struct hostapd_data *bss;
 unsigned int sec, usec;
 unsigned int num_sta_min = 0, num_sta_prod = 1, num_sta_sum = 0,
  wt_sum = 0;
 unsigned int quantum;
 Boolean all_div_min = TRUE;
 Boolean apply_limit = iface->conf->airtime_mode == AIRTIME_MODE_DYNAMIC;
 int wt, num_bss = 0, max_wt = 0;
 size_t i;

 for (i = 0; i < iface->num_bss; i++) {
  bss = iface->bss[i];
  if (!bss->started || !bss->conf->airtime_weight)
   continue;

  count_backlogged_sta(bss);
  if (!bss->num_backlogged_sta)
   continue;

  if (!num_sta_min || bss->num_backlogged_sta < num_sta_min)
   num_sta_min = bss->num_backlogged_sta;

  num_sta_prod *= bss->num_backlogged_sta;
  num_sta_sum += bss->num_backlogged_sta;
  wt_sum += bss->conf->airtime_weight;
  num_bss++;
 }

 if (num_sta_min) {
  for (i = 0; i < iface->num_bss; i++) {
   bss = iface->bss[i];
   if (!bss->started || !bss->conf->airtime_weight)
    continue;





   if (bss->num_backlogged_sta &&
       bss->num_backlogged_sta % num_sta_min > 0)
    all_div_min = FALSE;





   if (!apply_limit && bss->conf->airtime_limit) {
    if (bss->num_backlogged_sta * wt_sum >
        bss->conf->airtime_weight * num_sta_sum)
     apply_limit = TRUE;
   }
  }
  if (all_div_min)
   num_sta_prod /= num_sta_min;
 }

 for (i = 0; i < iface->num_bss; i++) {
  bss = iface->bss[i];
  if (!bss->started || !bss->conf->airtime_weight)
   continue;






  if (apply_limit && bss->num_backlogged_sta && num_bss > 1)
   wt = bss->conf->airtime_weight * num_sta_prod /
    bss->num_backlogged_sta;
  else
   wt = 1;

  bss->airtime_weight = wt;
  if (wt > max_wt)
   max_wt = wt;
 }

 quantum = get_airtime_quantum(max_wt);

 for (i = 0; i < iface->num_bss; i++) {
  bss = iface->bss[i];
  if (!bss->started || !bss->conf->airtime_weight)
   continue;
  set_sta_weights(bss, bss->airtime_weight * quantum);
 }

 if (get_airtime_policy_update_timeout(iface, &sec, &usec) < 0)
  return;

 eloop_register_timeout(sec, usec, update_airtime_weights, iface,
          ((void*)0));
}
