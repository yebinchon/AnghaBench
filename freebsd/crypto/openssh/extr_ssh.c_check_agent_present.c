
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ forward_agent; } ;


 int SSH_ERR_AGENT_NOT_PRESENT ;
 int debug (char*,int ) ;
 TYPE_1__ options ;
 int ssh_err (int) ;
 int ssh_get_authentication_socket (int *) ;

__attribute__((used)) static void
check_agent_present(void)
{
 int r;

 if (options.forward_agent) {

  if ((r = ssh_get_authentication_socket(((void*)0))) != 0) {
   options.forward_agent = 0;
   if (r != SSH_ERR_AGENT_NOT_PRESENT)
    debug("ssh_get_authentication_socket: %s",
        ssh_err(r));
  }
 }
}
