
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {struct edns_known_option* edns_known_options; scalar_t__ edns_known_options_num; } ;
struct edns_known_option {int dummy; } ;


 int MAX_KNOWN_EDNS_OPTS ;
 scalar_t__ calloc (int ,int) ;

int
edns_known_options_init(struct module_env* env)
{
 env->edns_known_options_num = 0;
 env->edns_known_options = (struct edns_known_option*)calloc(
  MAX_KNOWN_EDNS_OPTS, sizeof(struct edns_known_option));
 if(!env->edns_known_options) return 0;
 return 1;
}
