
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcl_list {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;


 int UNBOUND_DNS_PORT ;
 scalar_t__ atoi (char const*) ;
 int log_err (char*,...) ;
 int netblockstrtoaddr (char const*,int ,struct sockaddr_storage*,int *,int*) ;
 int tcl_list_insert (struct tcl_list*,struct sockaddr_storage*,int ,int,scalar_t__,int) ;

__attribute__((used)) static int
tcl_list_str_cfg(struct tcl_list* tcl, const char* str, const char* s2,
 int complain_duplicates)
{
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;
 uint32_t limit;
 if(atoi(s2) < 0) {
  log_err("bad connection limit %s", s2);
  return 0;
 }
 limit = (uint32_t)atoi(s2);
 if(!netblockstrtoaddr(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
  log_err("cannot parse connection limit netblock: %s", str);
  return 0;
 }
 if(!tcl_list_insert(tcl, &addr, addrlen, net, limit,
  complain_duplicates)) {
  log_err("out of memory");
  return 0;
 }
 return 1;
}
