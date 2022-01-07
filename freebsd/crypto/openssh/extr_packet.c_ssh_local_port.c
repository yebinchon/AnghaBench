
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int local_port; } ;


 int ssh_remote_ipaddr (struct ssh*) ;

int
ssh_local_port(struct ssh *ssh)
{
 (void)ssh_remote_ipaddr(ssh);
 return ssh->local_port;
}
