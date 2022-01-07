
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int remote_id ;
struct TYPE_2__ {scalar_t__ client_alive_count_max; } ;


 int SSH2_MSG_GLOBAL_REQUEST ;
 int channel_find_open (struct ssh*) ;
 int channel_request_start (struct ssh*,int,char*,int) ;
 int cleanup_exit (int) ;
 int logit (char*,char*) ;
 TYPE_1__ options ;
 scalar_t__ packet_inc_alive_timeouts () ;
 int packet_put_char (int) ;
 int packet_put_cstring (char*) ;
 int packet_send () ;
 int packet_start (int ) ;
 int sshpkt_fmt_connection_id (struct ssh*,char*,int) ;

__attribute__((used)) static void
client_alive_check(struct ssh *ssh)
{
 int channel_id;
 char remote_id[512];


 if (packet_inc_alive_timeouts() > options.client_alive_count_max) {
  sshpkt_fmt_connection_id(ssh, remote_id, sizeof(remote_id));
  logit("Timeout, client not responding from %s", remote_id);
  cleanup_exit(255);
 }





 if ((channel_id = channel_find_open(ssh)) == -1) {
  packet_start(SSH2_MSG_GLOBAL_REQUEST);
  packet_put_cstring("keepalive@openssh.com");
  packet_put_char(1);
 } else {
  channel_request_start(ssh, channel_id,
      "keepalive@openssh.com", 1);
 }
 packet_send();
}
