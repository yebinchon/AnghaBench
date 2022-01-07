
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * now; TYPE_2__* infra_cache; } ;
struct worker {TYPE_1__ env; } ;
struct infra_arg {TYPE_2__* infra; scalar_t__ ssl_failed; int now; int * ssl; } ;
struct TYPE_4__ {int hosts; } ;
typedef int RES ;


 int dump_infra_host ;
 int slabhash_traverse (int ,int ,int *,void*) ;

__attribute__((used)) static void
do_dump_infra(RES* ssl, struct worker* worker)
{
 struct infra_arg arg;
 arg.infra = worker->env.infra_cache;
 arg.ssl = ssl;
 arg.now = *worker->env.now;
 arg.ssl_failed = 0;
 slabhash_traverse(arg.infra->hosts, 0, &dump_infra_host, (void*)&arg);
}
