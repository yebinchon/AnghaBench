
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {char const* local_ipaddr; } ;


 int ssh_remote_ipaddr (struct ssh*) ;

const char *
ssh_local_ipaddr(struct ssh *ssh)
{
 (void)ssh_remote_ipaddr(ssh);
 return ssh->local_ipaddr;
}
