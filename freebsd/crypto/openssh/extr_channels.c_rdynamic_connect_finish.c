
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct channel_connect {int dummy; } ;
typedef int cctx ;
struct TYPE_4__ {struct channel_connect connect_ctx; int type; int host_port; int path; } ;
typedef TYPE_1__ Channel ;


 int SOCK_STREAM ;
 int SSH_CHANNEL_RDYNAMIC_FINISH ;
 int channel_connect_ctx_free (struct channel_connect*) ;
 int channel_register_fds (struct ssh*,TYPE_1__*,int,int,int,int ,int,int ) ;
 int connect_to_helper (struct ssh*,int ,int ,int ,int *,int *,struct channel_connect*,int *,int *) ;
 int memset (struct channel_connect*,int ,int) ;

__attribute__((used)) static int
rdynamic_connect_finish(struct ssh *ssh, Channel *c)
{
 struct channel_connect cctx;
 int sock;

 memset(&cctx, 0, sizeof(cctx));
 sock = connect_to_helper(ssh, c->path, c->host_port, SOCK_STREAM, ((void*)0),
     ((void*)0), &cctx, ((void*)0), ((void*)0));
 if (sock == -1)
  channel_connect_ctx_free(&cctx);
 else {

  c->type = SSH_CHANNEL_RDYNAMIC_FINISH;
  c->connect_ctx = cctx;
  channel_register_fds(ssh, c, sock, sock, -1, 0, 1, 0);
 }
 return sock;
}
