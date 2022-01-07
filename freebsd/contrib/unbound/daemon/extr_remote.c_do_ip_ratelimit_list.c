
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * now; TYPE_2__* infra_cache; } ;
struct worker {TYPE_1__ env; } ;
struct ip_ratelimit_list_arg {int all; TYPE_2__* infra; int * ssl; int now; } ;
struct TYPE_4__ {int * client_ip_rates; } ;
typedef int RES ;


 scalar_t__ infra_ip_ratelimit ;
 int ip_rate_list ;
 char* skipwhite (char*) ;
 int slabhash_traverse (int *,int ,int ,struct ip_ratelimit_list_arg*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
do_ip_ratelimit_list(RES* ssl, struct worker* worker, char* arg)
{
 struct ip_ratelimit_list_arg a;
 a.all = 0;
 a.infra = worker->env.infra_cache;
 a.now = *worker->env.now;
 a.ssl = ssl;
 arg = skipwhite(arg);
 if(strcmp(arg, "+a") == 0)
  a.all = 1;
 if(a.infra->client_ip_rates==((void*)0) ||
  (a.all == 0 && infra_ip_ratelimit == 0))
  return;
 slabhash_traverse(a.infra->client_ip_rates, 0, ip_rate_list, &a);
}
