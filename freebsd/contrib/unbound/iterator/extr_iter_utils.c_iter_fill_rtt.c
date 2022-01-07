
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct sock_list {int dummy; } ;
struct module_env {int dummy; } ;
struct iter_env {int dummy; } ;
struct delegpt_addr {int sel_rtt; int addrlen; int addr; struct delegpt_addr* next_result; } ;
struct delegpt {struct delegpt_addr* result_list; scalar_t__ bogus; } ;


 scalar_t__ BLACKLIST_PENALTY ;
 int iter_filter_unsuitable (struct iter_env*,struct module_env*,int *,size_t,int ,int ,struct delegpt_addr*) ;
 scalar_t__ sock_list_find (struct sock_list*,int *,int ) ;

__attribute__((used)) static int
iter_fill_rtt(struct iter_env* iter_env, struct module_env* env,
 uint8_t* name, size_t namelen, uint16_t qtype, time_t now,
 struct delegpt* dp, int* best_rtt, struct sock_list* blacklist,
 size_t* num_suitable_results)
{
 int got_it = 0;
 struct delegpt_addr* a;
 *num_suitable_results = 0;

 if(dp->bogus)
  return 0;
 for(a=dp->result_list; a; a = a->next_result) {
  a->sel_rtt = iter_filter_unsuitable(iter_env, env,
   name, namelen, qtype, now, a);
  if(a->sel_rtt != -1) {
   if(sock_list_find(blacklist, &a->addr, a->addrlen))
    a->sel_rtt += BLACKLIST_PENALTY;

   if(!got_it) {
    *best_rtt = a->sel_rtt;
    got_it = 1;
   } else if(a->sel_rtt < *best_rtt) {
    *best_rtt = a->sel_rtt;
   }
   (*num_suitable_results)++;
  }
 }
 return got_it;
}
