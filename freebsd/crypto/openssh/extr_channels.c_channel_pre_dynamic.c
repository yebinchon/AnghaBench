
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_7__ {int type; int sock; int output; int self; int input; } ;
typedef TYPE_1__ Channel ;


 int FD_SET (int ,int *) ;
 int SSH_CHANNEL_OPENING ;
 int chan_mark_dead (struct ssh*,TYPE_1__*) ;
 int channel_decode_socks4 (TYPE_1__*,int ,int ) ;
 int channel_decode_socks5 (TYPE_1__*,int ,int ) ;
 int debug2 (char*,int ,...) ;
 int port_open_helper (struct ssh*,TYPE_1__*,char*) ;
 int sshbuf_len (int ) ;
 int* sshbuf_ptr (int ) ;

__attribute__((used)) static void
channel_pre_dynamic(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 const u_char *p;
 u_int have;
 int ret;

 have = sshbuf_len(c->input);
 debug2("channel %d: pre_dynamic: have %d", c->self, have);


 if (have < 3) {

  FD_SET(c->sock, readset);
  return;
 }

 p = sshbuf_ptr(c->input);

 switch (p[0]) {
 case 0x04:
  ret = channel_decode_socks4(c, c->input, c->output);
  break;
 case 0x05:
  ret = channel_decode_socks5(c, c->input, c->output);
  break;
 default:
  ret = -1;
  break;
 }
 if (ret < 0) {
  chan_mark_dead(ssh, c);
 } else if (ret == 0) {
  debug2("channel %d: pre_dynamic: need more", c->self);

  FD_SET(c->sock, readset);
  if (sshbuf_len(c->output))
   FD_SET(c->sock, writeset);
 } else {

  c->type = SSH_CHANNEL_OPENING;
  port_open_helper(ssh, c, "direct-tcpip");
 }
}
