
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct connection_info {int rdomain; int lport; int laddress; int address; int host; } ;


 struct ssh* active_state ;
 int auth_get_canonical_hostname (struct ssh*,int) ;
 int ssh_local_ipaddr (struct ssh*) ;
 int ssh_local_port (struct ssh*) ;
 int ssh_packet_rdomain_in (struct ssh*) ;
 int ssh_remote_ipaddr (struct ssh*) ;

struct connection_info *
get_connection_info(int populate, int use_dns)
{
 struct ssh *ssh = active_state;
 static struct connection_info ci;

 if (!populate)
  return &ci;
 ci.host = auth_get_canonical_hostname(ssh, use_dns);
 ci.address = ssh_remote_ipaddr(ssh);
 ci.laddress = ssh_local_ipaddr(ssh);
 ci.lport = ssh_local_port(ssh);
 ci.rdomain = ssh_packet_rdomain_in(ssh);
 return &ci;
}
