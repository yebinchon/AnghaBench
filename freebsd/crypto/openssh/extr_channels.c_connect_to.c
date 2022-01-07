
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct channel_connect {int dummy; } ;
typedef int cctx ;
struct TYPE_4__ {int host_port; struct channel_connect connect_ctx; int path; } ;
typedef TYPE_1__ Channel ;


 int CHAN_TCP_PACKET_DEFAULT ;
 int CHAN_TCP_WINDOW_DEFAULT ;
 int SOCK_STREAM ;
 int SSH_CHANNEL_CONNECTING ;
 int channel_connect_ctx_free (struct channel_connect*) ;
 TYPE_1__* channel_new (struct ssh*,char*,int ,int,int,int,int ,int ,int ,char*,int) ;
 int connect_to_helper (struct ssh*,char const*,int,int ,char*,char*,struct channel_connect*,int *,int *) ;
 int memset (struct channel_connect*,int ,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static Channel *
connect_to(struct ssh *ssh, const char *host, int port,
    char *ctype, char *rname)
{
 struct channel_connect cctx;
 Channel *c;
 int sock;

 memset(&cctx, 0, sizeof(cctx));
 sock = connect_to_helper(ssh, host, port, SOCK_STREAM, ctype, rname,
     &cctx, ((void*)0), ((void*)0));
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
