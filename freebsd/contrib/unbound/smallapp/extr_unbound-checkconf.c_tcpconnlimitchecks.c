
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct config_str2list {int str2; int str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* tcp_connection_limits; } ;
typedef int socklen_t ;


 int UNBOUND_DNS_PORT ;
 int fatal_exit (char*,int ,int ) ;
 int netblockstrtoaddr (int ,int ,struct sockaddr_storage*,int *,int*) ;

__attribute__((used)) static void
tcpconnlimitchecks(struct config_file* cfg)
{
 int d;
 struct sockaddr_storage a;
 socklen_t alen;
 struct config_str2list* tcl;
 for(tcl=cfg->tcp_connection_limits; tcl; tcl = tcl->next) {
  if(!netblockstrtoaddr(tcl->str, UNBOUND_DNS_PORT, &a, &alen,
   &d)) {
   fatal_exit("cannot parse tcp connection limit address %s %s",
    tcl->str, tcl->str2);
  }
 }
}
