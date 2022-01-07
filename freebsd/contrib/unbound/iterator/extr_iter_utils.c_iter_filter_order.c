
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct sock_list {int dummy; } ;
struct module_env {TYPE_1__* cfg; int rnd; } ;
struct iter_env {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct delegpt_addr {int sel_rtt; int attempts; struct delegpt_addr* next_result; TYPE_2__ addr; } ;
struct delegpt {struct delegpt_addr* result_list; } ;
struct TYPE_3__ {scalar_t__ fast_server_permil; size_t fast_server_num; scalar_t__ prefer_ip6; } ;


 scalar_t__ AF_INET6 ;
 int RTT_BAND ;
 int USEFUL_SERVER_TOP_TIMEOUT ;
 int VERB_ALGO ;
 scalar_t__ delegpt_count_missing_targets (struct delegpt*) ;
 int iter_fill_rtt (struct iter_env*,struct module_env*,int *,size_t,int ,scalar_t__,struct delegpt*,int*,struct sock_list*,size_t*) ;
 int nth_rtt (struct delegpt_addr*,size_t,size_t) ;
 scalar_t__ ub_random_max (int ,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
iter_filter_order(struct iter_env* iter_env, struct module_env* env,
 uint8_t* name, size_t namelen, uint16_t qtype, time_t now,
 struct delegpt* dp, int* selected_rtt, int open_target,
 struct sock_list* blacklist, time_t prefetch)
{
 int got_num = 0, low_rtt = 0, swap_to_front, rtt_band = RTT_BAND, nth;
 size_t num_results;
 struct delegpt_addr* a, *n, *prev=((void*)0);


 got_num = iter_fill_rtt(iter_env, env, name, namelen, qtype, now, dp,
  &low_rtt, blacklist, &num_results);
 if(got_num == 0)
  return 0;
 if(low_rtt >= USEFUL_SERVER_TOP_TIMEOUT &&
  (delegpt_count_missing_targets(dp) > 0 || open_target > 0)) {
  verbose(VERB_ALGO, "Bad choices, trying to get more choice");
  return 0;

 }

 if(env->cfg->fast_server_permil != 0 && prefetch == 0 &&
  num_results > env->cfg->fast_server_num &&
  ub_random_max(env->rnd, 1000) < env->cfg->fast_server_permil) {



  nth = nth_rtt(dp->result_list, num_results,
   env->cfg->fast_server_num);
  if(nth > 0) {
   rtt_band = nth - low_rtt;
   if(rtt_band > RTT_BAND)
    rtt_band = RTT_BAND;
  }
 }

 got_num = 0;
 a = dp->result_list;
 while(a) {

  if(a->sel_rtt == -1) {
   prev = a;
   a = a->next_result;
   continue;
  }

  swap_to_front = 0;
  if(a->sel_rtt >= low_rtt && a->sel_rtt - low_rtt <= rtt_band) {
   got_num++;
   swap_to_front = 1;
  } else if(a->sel_rtt<low_rtt && low_rtt-a->sel_rtt<=rtt_band) {
   got_num++;
   swap_to_front = 1;
  }

  if(swap_to_front && prev) {
   n = a->next_result;
   prev->next_result = n;
   a->next_result = dp->result_list;
   dp->result_list = a;
   a = n;
  } else {
   prev = a;
   a = a->next_result;
  }
 }
 *selected_rtt = low_rtt;

 if (env->cfg->prefer_ip6) {
  int got_num6 = 0;
  int low_rtt6 = 0;
  int i;
  int attempt = -1;


  int num4ok = 0;
  int num4_lowrtt = 0;
  prev = ((void*)0);
  a = dp->result_list;
  for(i = 0; i < got_num; i++) {
   swap_to_front = 0;
   if(a->addr.ss_family != AF_INET6 && attempt == -1) {



    attempt = a->attempts;
    num4ok++;
    num4_lowrtt = a->sel_rtt;
   } else if(a->addr.ss_family != AF_INET6 && attempt == a->attempts) {
    num4ok++;
    if(num4_lowrtt == 0 || a->sel_rtt < num4_lowrtt) {
     num4_lowrtt = a->sel_rtt;
    }
   }
   if(a->addr.ss_family == AF_INET6) {
    if(attempt == -1) {
     attempt = a->attempts;
    } else if(a->attempts > attempt) {
     break;
    }
    got_num6++;
    swap_to_front = 1;
    if(low_rtt6 == 0 || a->sel_rtt < low_rtt6) {
     low_rtt6 = a->sel_rtt;
    }
   }

   if(swap_to_front && prev) {
    n = a->next_result;
    prev->next_result = n;
    a->next_result = dp->result_list;
    dp->result_list = a;
    a = n;
   } else {
    prev = a;
    a = a->next_result;
   }
  }
  if(got_num6 > 0) {
   got_num = got_num6;
   *selected_rtt = low_rtt6;
  } else if(num4ok > 0) {
   got_num = num4ok;
   *selected_rtt = num4_lowrtt;
  }
 }
 return got_num;
}
