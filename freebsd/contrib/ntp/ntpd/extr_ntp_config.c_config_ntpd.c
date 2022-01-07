
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; int ai_protocol; int ai_socktype; } ;
typedef int config_tree ;


 int AF_INET6 ;
 int INITIAL_DNS_RETRY ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int ZERO (struct addrinfo) ;
 int clamp_systime () ;
 int config_access (int *) ;
 int config_auth (int *) ;
 int config_fudge (int *) ;
 int config_logconfig (int *) ;
 int config_mdnstries (int *) ;
 int config_monitor (int *) ;
 int config_nic_rules (int *,int) ;
 int config_other_modes (int *) ;
 int config_peers (int *) ;
 int config_phone (int *) ;
 int config_reset_counters (int *) ;
 int config_rlimit (int *) ;
 int config_setvar (int *) ;
 int config_system_opts (int *) ;
 int config_tinker (int *) ;
 int config_tos (int *) ;
 scalar_t__ config_tos_clock (int *) ;
 int config_trap (int *) ;
 int config_ttl (int *) ;
 int config_unpeers (int *) ;
 int config_vars (int *) ;
 int debug ;
 int dump_restricts () ;
 int gai_test_callback ;
 int getaddrinfo_sometime (char*,char*,struct addrinfo*,int ,int ,void*) ;
 int io_open_sockets () ;

__attribute__((used)) static void
config_ntpd(
 config_tree *ptree,
 int input_from_files
 )
{




 if (input_from_files) {
  if (config_tos_clock(ptree))
   clamp_systime();
 }

 config_nic_rules(ptree, input_from_files);
 config_monitor(ptree);
 config_auth(ptree);
 config_tos(ptree);
 config_access(ptree);
 config_tinker(ptree);
 config_rlimit(ptree);
 config_system_opts(ptree);
 config_logconfig(ptree);
 config_phone(ptree);
 config_mdnstries(ptree);
 config_setvar(ptree);
 config_ttl(ptree);
 config_vars(ptree);

 io_open_sockets();

 config_trap(ptree);
 config_other_modes(ptree);
 config_peers(ptree);
 config_unpeers(ptree);
 config_fudge(ptree);
 config_reset_counters(ptree);
}
