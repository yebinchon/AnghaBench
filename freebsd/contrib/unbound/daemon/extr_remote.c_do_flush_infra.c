
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* now; TYPE_1__* infra_cache; } ;
struct worker {TYPE_2__ env; } ;
struct sockaddr_storage {int dummy; } ;
struct del_info {int expired; int addr; int addrlen; scalar_t__ num_keys; scalar_t__ num_msgs; scalar_t__ num_rrsets; scalar_t__ labs; scalar_t__ len; scalar_t__ name; struct worker* worker; } ;
typedef int socklen_t ;
struct TYPE_3__ {int hosts; } ;
typedef int RES ;


 int UNBOUND_DNS_PORT ;
 int infra_del_host ;
 int ipstrtoaddr (char*,int ,struct sockaddr_storage*,int *) ;
 int memmove (int *,struct sockaddr_storage*,int ) ;
 int send_ok (int *) ;
 int slabhash_clear (int ) ;
 int slabhash_traverse (int ,int,int *,struct del_info*) ;
 int ssl_printf (int *,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
do_flush_infra(RES* ssl, struct worker* worker, char* arg)
{
 struct sockaddr_storage addr;
 socklen_t len;
 struct del_info inf;
 if(strcmp(arg, "all") == 0) {
  slabhash_clear(worker->env.infra_cache->hosts);
  send_ok(ssl);
  return;
 }
 if(!ipstrtoaddr(arg, UNBOUND_DNS_PORT, &addr, &len)) {
  (void)ssl_printf(ssl, "error parsing ip addr: '%s'\n", arg);
  return;
 }


 inf.worker = worker;
 inf.name = 0;
 inf.len = 0;
 inf.labs = 0;
 inf.expired = *worker->env.now;
 inf.expired -= 3;
 inf.num_rrsets = 0;
 inf.num_msgs = 0;
 inf.num_keys = 0;
 inf.addrlen = len;
 memmove(&inf.addr, &addr, len);
 slabhash_traverse(worker->env.infra_cache->hosts, 1, &infra_del_host,
  &inf);
 send_ok(ssl);
}
