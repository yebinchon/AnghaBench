
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef size_t u_int ;
struct permission_set {size_t num_permitted_user; struct permission* permitted_user; } ;
struct ssh_channels {struct permission_set local_perms; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct permission {scalar_t__ port_to_connect; int host_to_connect; int * downstream; } ;
typedef int Channel ;


 int * connect_to (struct ssh*,int ,scalar_t__,char*,char*) ;
 int error (char*,int ) ;
 scalar_t__ open_listen_match_tcpip (struct permission*,char const*,int ,int) ;
 int * rdynamic_connect_prepare (struct ssh*,char*,char*) ;

Channel *
channel_connect_by_listen_address(struct ssh *ssh, const char *listen_host,
    u_short listen_port, char *ctype, char *rname)
{
 struct ssh_channels *sc = ssh->chanctxt;
 struct permission_set *pset = &sc->local_perms;
 u_int i;
 struct permission *perm;

 for (i = 0; i < pset->num_permitted_user; i++) {
  perm = &pset->permitted_user[i];
  if (open_listen_match_tcpip(perm,
      listen_host, listen_port, 1)) {
   if (perm->downstream)
    return perm->downstream;
   if (perm->port_to_connect == 0)
    return rdynamic_connect_prepare(ssh,
        ctype, rname);
   return connect_to(ssh,
       perm->host_to_connect, perm->port_to_connect,
       ctype, rname);
  }
 }
 error("WARNING: Server requests forwarding for unknown listen_port %d",
     listen_port);
 return ((void*)0);
}
