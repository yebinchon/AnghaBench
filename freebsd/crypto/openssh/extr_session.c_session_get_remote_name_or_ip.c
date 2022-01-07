
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ssh {int dummy; } ;


 char* auth_get_canonical_hostname (struct ssh*,int) ;
 char* ssh_remote_ipaddr (struct ssh*) ;
 scalar_t__ strlen (char const*) ;

const char *
session_get_remote_name_or_ip(struct ssh *ssh, u_int utmp_size, int use_dns)
{
 const char *remote = "";

 if (utmp_size > 0)
  remote = auth_get_canonical_hostname(ssh, use_dns);
 if (utmp_size == 0 || strlen(remote) > utmp_size)
  remote = ssh_remote_ipaddr(ssh);
 return remote;
}
