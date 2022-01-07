
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct iter_donotq {int dummy; } ;
typedef int socklen_t ;


 int UNBOUND_DNS_PORT ;
 int VERB_ALGO ;
 int donotq_insert (struct iter_donotq*,struct sockaddr_storage*,int ,int) ;
 int log_err (char*,...) ;
 int netblockstrtoaddr (char const*,int ,struct sockaddr_storage*,int *,int*) ;
 int verbose (int ,char*,char const*) ;

__attribute__((used)) static int
donotq_str_cfg(struct iter_donotq* dq, const char* str)
{
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;
 verbose(VERB_ALGO, "donotq: %s", str);
 if(!netblockstrtoaddr(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
  log_err("cannot parse donotquery netblock: %s", str);
  return 0;
 }
 if(!donotq_insert(dq, &addr, addrlen, net)) {
  log_err("out of memory");
  return 0;
 }
 return 1;
}
