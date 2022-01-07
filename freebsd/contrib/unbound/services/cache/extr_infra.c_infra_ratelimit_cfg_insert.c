
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_cache {int dummy; } ;
struct domain_limit_data {void* below; void* lim; } ;
struct config_str2list {int str2; int str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* ratelimit_below_domain; struct config_str2list* ratelimit_for_domain; } ;


 void* atoi (int ) ;
 struct domain_limit_data* domain_limit_findcreate (struct infra_cache*,int ) ;

__attribute__((used)) static int infra_ratelimit_cfg_insert(struct infra_cache* infra,
 struct config_file* cfg)
{
 struct config_str2list* p;
 struct domain_limit_data* d;
 for(p = cfg->ratelimit_for_domain; p; p = p->next) {
  d = domain_limit_findcreate(infra, p->str);
  if(!d)
   return 0;
  d->lim = atoi(p->str2);
 }
 for(p = cfg->ratelimit_below_domain; p; p = p->next) {
  d = domain_limit_findcreate(infra, p->str);
  if(!d)
   return 0;
  d->below = atoi(p->str2);
 }
 return 1;
}
