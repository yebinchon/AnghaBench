
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
typedef size_t u_int ;
struct permission_set {size_t all_permitted; size_t num_permitted_user; size_t num_permitted_admin; struct permission* permitted_admin; struct permission* permitted_user; } ;
struct ssh_channels {struct permission_set local_perms; } ;
struct ssh {struct ssh_channels* chanctxt; } ;
struct permission {int dummy; } ;
struct channel_connect {int dummy; } ;
typedef int cctx ;
struct TYPE_4__ {struct channel_connect connect_ctx; int path; int host_port; } ;
typedef TYPE_1__ Channel ;


 int CHAN_TCP_PACKET_DEFAULT ;
 int CHAN_TCP_WINDOW_DEFAULT ;
 int SOCK_STREAM ;
 int SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED ;
 int SSH_CHANNEL_CONNECTING ;
 int channel_connect_ctx_free (struct channel_connect*) ;
 TYPE_1__* channel_new (struct ssh*,char*,int ,int,int,int,int ,int ,int ,char*,int) ;
 int connect_to_helper (struct ssh*,char const*,int ,int ,char*,char*,struct channel_connect*,int*,char const**) ;
 int logit (char*,char const*,int ) ;
 int memset (struct channel_connect*,int ,int) ;
 scalar_t__ open_match (struct permission*,char const*,int ) ;
 int xstrdup (char const*) ;

Channel *
channel_connect_to_port(struct ssh *ssh, const char *host, u_short port,
    char *ctype, char *rname, int *reason, const char **errmsg)
{
 struct ssh_channels *sc = ssh->chanctxt;
 struct permission_set *pset = &sc->local_perms;
 struct channel_connect cctx;
 Channel *c;
 u_int i, permit, permit_adm = 1;
 int sock;
 struct permission *perm;

 permit = pset->all_permitted;
 if (!permit) {
  for (i = 0; i < pset->num_permitted_user; i++) {
   perm = &pset->permitted_user[i];
   if (open_match(perm, host, port)) {
    permit = 1;
    break;
   }
  }
 }

 if (pset->num_permitted_admin > 0) {
  permit_adm = 0;
  for (i = 0; i < pset->num_permitted_admin; i++) {
   perm = &pset->permitted_admin[i];
   if (open_match(perm, host, port)) {
    permit_adm = 1;
    break;
   }
  }
 }

 if (!permit || !permit_adm) {
  logit("Received request to connect to host %.100s port %d, "
      "but the request was denied.", host, port);
  if (reason != ((void*)0))
   *reason = SSH2_OPEN_ADMINISTRATIVELY_PROHIBITED;
  return ((void*)0);
 }

 memset(&cctx, 0, sizeof(cctx));
 sock = connect_to_helper(ssh, host, port, SOCK_STREAM, ctype, rname,
     &cctx, reason, errmsg);
 if (sock == -1) {
  channel_connect_ctx_free(&cctx);
  return ((void*)0);
 }

 c = channel_new(ssh, ctype, SSH_CHANNEL_CONNECTING, sock, sock, -1,
     CHAN_TCP_WINDOW_DEFAULT, CHAN_TCP_PACKET_DEFAULT, 0, rname, 1);
 c->host_port = port;
 c->path = xstrdup(host);
 c->connect_ctx = cctx;

 return c;
}
