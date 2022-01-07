
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct config_file {int num_ifs; int outgoing_num_ports; size_t outgoing_num_tcp; int num_threads; scalar_t__ do_ip6; int if_automatic; scalar_t__ do_ip4; scalar_t__ incoming_num_tcp; scalar_t__ do_tcp; scalar_t__ do_udp; } ;
typedef scalar_t__ rlim_t ;


 int RLIMIT_NOFILE ;
 scalar_t__ RLIM_INFINITY ;
 int VERB_ALGO ;
 int errno ;
 int fatal_exit (char*) ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int log_err (char*) ;
 int log_warn (char*,...) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int strerror (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int ub_event_get_version () ;
 int verbose (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void
checkrlimits(struct config_file* cfg)
{
 (void)cfg;


}
