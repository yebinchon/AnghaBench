
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct permission_set {size_t num_permitted_user; struct permission* permitted_user; } ;
struct ssh_channels {struct permission_set local_perms; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct permission {int port_to_connect; int host_to_connect; } ;
typedef int Channel ;


 int * connect_to (struct ssh*,int ,int ,char*,char*) ;
 int error (char*,char const*) ;
 scalar_t__ open_listen_match_streamlocal (struct permission*,char const*) ;

Channel *
channel_connect_by_listen_path(struct ssh *ssh, const char *path,
    char *ctype, char *rname)
{
 struct ssh_channels *sc = ssh->chanctxt;
 struct permission_set *pset = &sc->local_perms;
 u_int i;
 struct permission *perm;

 for (i = 0; i < pset->num_permitted_user; i++) {
  perm = &pset->permitted_user[i];
  if (open_listen_match_streamlocal(perm, path)) {
   return connect_to(ssh,
       perm->host_to_connect, perm->port_to_connect,
       ctype, rname);
  }
 }
 error("WARNING: Server requests forwarding for unknown path %.100s",
     path);
 return ((void*)0);
}
