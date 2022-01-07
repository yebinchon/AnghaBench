
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct delegpt {int dummy; } ;
struct config_stub {int name; struct config_strlist* addrs; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
typedef int socklen_t ;


 int authextstrtoaddr (int ,struct sockaddr_storage*,int *,char**) ;
 int delegpt_add_addr_mlc (struct delegpt*,struct sockaddr_storage*,int ,int ,int ,char*) ;
 int log_assert (int ) ;
 int log_err (char*,...) ;

__attribute__((used)) static int
read_fwds_addr(struct config_stub* s, struct delegpt* dp)
{
 struct config_strlist* p;
 struct sockaddr_storage addr;
 socklen_t addrlen;
 char* tls_auth_name;
 for(p = s->addrs; p; p = p->next) {
  log_assert(p->str);
  if(!authextstrtoaddr(p->str, &addr, &addrlen, &tls_auth_name)) {
   log_err("cannot parse forward %s ip address: '%s'",
    s->name, p->str);
   return 0;
  }

  if(tls_auth_name)
   log_err("no name verification functionality in "
    "ssl library, ignored name for %s", p->str);

  if(!delegpt_add_addr_mlc(dp, &addr, addrlen, 0, 0,
   tls_auth_name)) {
   log_err("out of memory");
   return 0;
  }
 }
 return 1;
}
