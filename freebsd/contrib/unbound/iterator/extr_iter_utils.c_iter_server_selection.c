
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct sock_list {int dummy; } ;
struct module_env {int rnd; int * now; } ;
struct iter_env {int dummy; } ;
struct delegpt_addr {scalar_t__ attempts; struct delegpt_addr* next_result; } ;
struct delegpt {struct delegpt_addr* result_list; } ;


 int BLACKLIST_PENALTY ;
 scalar_t__ OUTBOUND_MSG_RETRY ;
 int USEFUL_SERVER_TOP_TIMEOUT ;
 int VERB_ALGO ;
 int iter_filter_order (struct iter_env*,struct module_env*,int *,size_t,int ,int ,struct delegpt*,int*,int,struct sock_list*,int ) ;
 int log_assert (int) ;
 int ub_random_max (int ,int) ;
 int verbose (int ,char*,...) ;

struct delegpt_addr*
iter_server_selection(struct iter_env* iter_env,
 struct module_env* env, struct delegpt* dp,
 uint8_t* name, size_t namelen, uint16_t qtype, int* dnssec_lame,
 int* chase_to_rd, int open_target, struct sock_list* blacklist,
 time_t prefetch)
{
 int sel;
 int selrtt;
 struct delegpt_addr* a, *prev;
 int num = iter_filter_order(iter_env, env, name, namelen, qtype,
  *env->now, dp, &selrtt, open_target, blacklist, prefetch);

 if(num == 0)
  return ((void*)0);
 verbose(VERB_ALGO, "selrtt %d", selrtt);
 if(selrtt > BLACKLIST_PENALTY) {
  if(selrtt-BLACKLIST_PENALTY > USEFUL_SERVER_TOP_TIMEOUT*3) {
   verbose(VERB_ALGO, "chase to "
    "blacklisted recursion lame server");
   *chase_to_rd = 1;
  }
  if(selrtt-BLACKLIST_PENALTY > USEFUL_SERVER_TOP_TIMEOUT*2) {
   verbose(VERB_ALGO, "chase to "
    "blacklisted dnssec lame server");
   *dnssec_lame = 1;
  }
 } else {
  if(selrtt > USEFUL_SERVER_TOP_TIMEOUT*3) {
   verbose(VERB_ALGO, "chase to recursion lame server");
   *chase_to_rd = 1;
  }
  if(selrtt > USEFUL_SERVER_TOP_TIMEOUT*2) {
   verbose(VERB_ALGO, "chase to dnssec lame server");
   *dnssec_lame = 1;
  }
  if(selrtt == USEFUL_SERVER_TOP_TIMEOUT) {
   verbose(VERB_ALGO, "chase to blacklisted lame server");
   return ((void*)0);
  }
 }

 if(num == 1) {
  a = dp->result_list;
  if(++a->attempts < OUTBOUND_MSG_RETRY)
   return a;
  dp->result_list = a->next_result;
  return a;
 }


 log_assert(num > 1);


 sel = ub_random_max(env->rnd, num);
 a = dp->result_list;
 prev = ((void*)0);
 while(sel > 0 && a) {
  prev = a;
  a = a->next_result;
  sel--;
 }
 if(!a)
  return ((void*)0);
 if(++a->attempts < OUTBOUND_MSG_RETRY)
  return a;

 if(prev)
  prev->next_result = a->next_result;
 else dp->result_list = a->next_result;
 return a;
}
