
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ server_alive_count_max; } ;


 int SSH2_MSG_GLOBAL_REQUEST ;
 int cleanup_exit (int) ;
 int client_register_global_confirm (int *,int *) ;
 int host ;
 int logit (char*,int ) ;
 TYPE_1__ options ;
 scalar_t__ packet_inc_alive_timeouts () ;
 int packet_put_char (int) ;
 int packet_put_cstring (char*) ;
 int packet_send () ;
 int packet_start (int ) ;

__attribute__((used)) static void
server_alive_check(void)
{
 if (packet_inc_alive_timeouts() > options.server_alive_count_max) {
  logit("Timeout, server %s not responding.", host);
  cleanup_exit(255);
 }
 packet_start(SSH2_MSG_GLOBAL_REQUEST);
 packet_put_cstring("keepalive@openssh.com");
 packet_put_char(1);
 packet_send();

 client_register_global_confirm(((void*)0), ((void*)0));
}
