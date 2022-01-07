
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {TYPE_2__* state; TYPE_1__* kex; } ;
typedef int remote_id ;
struct TYPE_4__ {int server_side; } ;
struct TYPE_3__ {int failed_choice; } ;


 int BLACKLIST_AUTH_FAIL ;
 int BLACKLIST_NOTIFY (int ,char*) ;
 int ECONNRESET ;
 int errno ;
 int logdie (char*,char const*,...) ;
 int ssh_err (int) ;
 int ssh_packet_clear_keys (struct ssh*) ;
 int sshpkt_fmt_connection_id (struct ssh*,char*,int) ;

void
sshpkt_fatal(struct ssh *ssh, const char *tag, int r)
{
 char remote_id[512];

 sshpkt_fmt_connection_id(ssh, remote_id, sizeof(remote_id));

 switch (r) {
 case 136:
  ssh_packet_clear_keys(ssh);
  logdie("Connection closed by %s", remote_id);
 case 135:
  ssh_packet_clear_keys(ssh);
  logdie("Connection %s %s timed out",
      ssh->state->server_side ? "from" : "to", remote_id);
 case 134:
  ssh_packet_clear_keys(ssh);
  logdie("Disconnected from %s", remote_id);
 case 128:
  if (errno == ECONNRESET) {
   ssh_packet_clear_keys(ssh);
   logdie("Connection reset by %s", remote_id);
  }

 case 133:
 case 129:
 case 132:
 case 130:
 case 131:
  if (ssh && ssh->kex && ssh->kex->failed_choice) {
   BLACKLIST_NOTIFY(BLACKLIST_AUTH_FAIL, "ssh");
   ssh_packet_clear_keys(ssh);
   logdie("Unable to negotiate with %s: %s. "
       "Their offer: %s", remote_id, ssh_err(r),
       ssh->kex->failed_choice);
  }

 default:
  ssh_packet_clear_keys(ssh);
  logdie("%s%sConnection %s %s: %s",
      tag != ((void*)0) ? tag : "", tag != ((void*)0) ? ": " : "",
      ssh->state->server_side ? "from" : "to",
      remote_id, ssh_err(r));
 }
}
