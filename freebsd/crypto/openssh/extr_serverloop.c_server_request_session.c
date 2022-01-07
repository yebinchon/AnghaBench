
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_5__ {int self; } ;
typedef TYPE_1__ Channel ;


 int CHAN_SES_PACKET_DEFAULT ;
 int SSH_CHANNEL_LARVAL ;
 int channel_free (struct ssh*,TYPE_1__*) ;
 TYPE_1__* channel_new (struct ssh*,char*,int ,int,int,int,int ,int ,int ,char*,int) ;
 int channel_register_cleanup (struct ssh*,int ,int ,int ) ;
 int debug (char*,...) ;
 scalar_t__ no_more_sessions ;
 int packet_check_eom () ;
 int packet_disconnect (char*) ;
 int session_close_by_channel ;
 int session_open (int ,int ) ;
 int the_authctxt ;

__attribute__((used)) static Channel *
server_request_session(struct ssh *ssh)
{
 Channel *c;

 debug("input_session_request");
 packet_check_eom();

 if (no_more_sessions) {
  packet_disconnect("Possible attack: attempt to open a session "
      "after additional sessions disabled");
 }







 c = channel_new(ssh, "session", SSH_CHANNEL_LARVAL,
     -1, -1, -1, 0, CHAN_SES_PACKET_DEFAULT,
     0, "server-session", 1);
 if (session_open(the_authctxt, c->self) != 1) {
  debug("session open failed, free channel %d", c->self);
  channel_free(ssh, c);
  return ((void*)0);
 }
 channel_register_cleanup(ssh, c->self, session_close_by_channel, 0);
 return c;
}
