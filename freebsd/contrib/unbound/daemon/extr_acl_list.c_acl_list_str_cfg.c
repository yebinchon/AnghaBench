
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct acl_list {int dummy; } ;
typedef int socklen_t ;
typedef enum acl_access { ____Placeholder_acl_access } acl_access ;


 int UNBOUND_DNS_PORT ;
 int acl_allow ;
 int acl_allow_setrd ;
 int acl_allow_snoop ;
 int acl_deny ;
 int acl_deny_non_local ;
 int acl_list_insert (struct acl_list*,struct sockaddr_storage*,int ,int,int,int) ;
 int acl_refuse ;
 int acl_refuse_non_local ;
 int log_err (char*,...) ;
 int netblockstrtoaddr (char const*,int ,struct sockaddr_storage*,int *,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
acl_list_str_cfg(struct acl_list* acl, const char* str, const char* s2,
 int complain_duplicates)
{
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;
 enum acl_access control;
 if(strcmp(s2, "allow") == 0)
  control = acl_allow;
 else if(strcmp(s2, "deny") == 0)
  control = acl_deny;
 else if(strcmp(s2, "refuse") == 0)
  control = acl_refuse;
 else if(strcmp(s2, "deny_non_local") == 0)
  control = acl_deny_non_local;
 else if(strcmp(s2, "refuse_non_local") == 0)
  control = acl_refuse_non_local;
 else if(strcmp(s2, "allow_snoop") == 0)
  control = acl_allow_snoop;
 else if(strcmp(s2, "allow_setrd") == 0)
  control = acl_allow_setrd;
 else {
  log_err("access control type %s unknown", str);
  return 0;
 }
 if(!netblockstrtoaddr(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
  log_err("cannot parse access control: %s %s", str, s2);
  return 0;
 }
 if(!acl_list_insert(acl, &addr, addrlen, net, control,
  complain_duplicates)) {
  log_err("out of memory");
  return 0;
 }
 return 1;
}
