
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {int self; int local_maxpacket; int local_window; } ;
typedef TYPE_1__ Channel ;


 int SSH2_MSG_CHANNEL_OPEN ;
 int fatal (char*,char const*,int ,int ) ;
 int ssh_err (int) ;
 int sshpkt_put_cstring (struct ssh*,char const*) ;
 int sshpkt_put_u32 (struct ssh*,int ) ;
 int sshpkt_start (struct ssh*,int ) ;

__attribute__((used)) static void
open_preamble(struct ssh *ssh, const char *where, Channel *c, const char *type)
{
 int r;

 if ((r = sshpkt_start(ssh, SSH2_MSG_CHANNEL_OPEN)) != 0 ||
     (r = sshpkt_put_cstring(ssh, type)) != 0 ||
     (r = sshpkt_put_u32(ssh, c->self)) != 0 ||
     (r = sshpkt_put_u32(ssh, c->local_window)) != 0 ||
     (r = sshpkt_put_u32(ssh, c->local_maxpacket)) != 0) {
  fatal("%s: channel %i: open: %s", where, c->self, ssh_err(r));
 }
}
