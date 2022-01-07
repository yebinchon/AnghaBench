
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct config_str2list {int str2; int str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* acls; } ;
typedef int socklen_t ;


 int UNBOUND_DNS_PORT ;
 int fatal_exit (char*,int ,int ) ;
 int netblockstrtoaddr (int ,int ,struct sockaddr_storage*,int *,int*) ;

__attribute__((used)) static void
aclchecks(struct config_file* cfg)
{
 int d;
 struct sockaddr_storage a;
 socklen_t alen;
 struct config_str2list* acl;
 for(acl=cfg->acls; acl; acl = acl->next) {
  if(!netblockstrtoaddr(acl->str, UNBOUND_DNS_PORT, &a, &alen,
   &d)) {
   fatal_exit("cannot parse access control address %s %s",
    acl->str, acl->str2);
  }
 }
}
