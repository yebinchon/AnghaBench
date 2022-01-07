
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct module_env {size_t edns_known_options_num; TYPE_1__* edns_known_options; scalar_t__ worker; } ;
struct TYPE_2__ {scalar_t__ opt_code; int bypass_cache_stage; int no_aggregation; } ;


 size_t MAX_KNOWN_EDNS_OPTS ;
 int log_err (char*) ;

int
edns_register_option(uint16_t opt_code, int bypass_cache_stage,
 int no_aggregation, struct module_env* env)
{
 size_t i;
 if(env->worker) {
  log_err("invalid edns registration: "
   "trying to register option after module init phase");
  return 0;
 }







 for(i=0; i<env->edns_known_options_num; i++)
  if(env->edns_known_options[i].opt_code == opt_code)
   break;

 if(i == env->edns_known_options_num) {
  if(env->edns_known_options_num >= MAX_KNOWN_EDNS_OPTS) {
   log_err("invalid edns registration: maximum options reached");
   return 0;
  }
  env->edns_known_options_num++;
 }
 env->edns_known_options[i].opt_code = opt_code;
 env->edns_known_options[i].bypass_cache_stage = bypass_cache_stage;
 env->edns_known_options[i].no_aggregation = no_aggregation;
 return 1;
}
