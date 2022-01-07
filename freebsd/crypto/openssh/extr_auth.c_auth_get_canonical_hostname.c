
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 char* remote_hostname (struct ssh*) ;
 char const* ssh_remote_ipaddr (struct ssh*) ;

const char *
auth_get_canonical_hostname(struct ssh *ssh, int use_dns)
{
 static char *dnsname;

 if (!use_dns)
  return ssh_remote_ipaddr(ssh);
 else if (dnsname != ((void*)0))
  return dnsname;
 else {
  dnsname = remote_hostname(ssh);
  return dnsname;
 }
}
