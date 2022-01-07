
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int* u_int ;
typedef int u_char ;
struct ssh {struct session_state* state; } ;
struct session_state {int server_side; scalar_t__ keep_alive_timeouts; } ;


 int DBG (int ) ;
 int* SSH2_DISCONNECT_BY_APPLICATION ;




 int SSH_ERR_DISCONNECTED ;
 int SYSLOG_LEVEL_ERROR ;
 int SYSLOG_LEVEL_INFO ;
 int debug (char*,...) ;
 int debug3 (char*) ;
 int do_log2 (int ,char*,int ,int ,int*,int*) ;
 int free (int*) ;
 int ssh_packet_read_poll2 (struct ssh*,int*,int *) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 int sshpkt_get_string (struct ssh*,int**,int *) ;
 int sshpkt_get_u32 (struct ssh*,int**) ;
 int sshpkt_get_u8 (struct ssh*,int *) ;

int
ssh_packet_read_poll_seqnr(struct ssh *ssh, u_char *typep, u_int32_t *seqnr_p)
{
 struct session_state *state = ssh->state;
 u_int reason, seqnr;
 int r;
 u_char *msg;

 for (;;) {
  msg = ((void*)0);
  r = ssh_packet_read_poll2(ssh, typep, seqnr_p);
  if (r != 0)
   return r;
  if (*typep) {
   state->keep_alive_timeouts = 0;
   DBG(debug("received packet type %d", *typep));
  }
  switch (*typep) {
  case 129:
   debug3("Received SSH2_MSG_IGNORE");
   break;
  case 131:
   if ((r = sshpkt_get_u8(ssh, ((void*)0))) != 0 ||
       (r = sshpkt_get_string(ssh, &msg, ((void*)0))) != 0 ||
       (r = sshpkt_get_string(ssh, ((void*)0), ((void*)0))) != 0) {
    free(msg);
    return r;
   }
   debug("Remote: %.900s", msg);
   free(msg);
   break;
  case 130:
   if ((r = sshpkt_get_u32(ssh, &reason)) != 0 ||
       (r = sshpkt_get_string(ssh, &msg, ((void*)0))) != 0)
    return r;

   do_log2(ssh->state->server_side &&
       reason == SSH2_DISCONNECT_BY_APPLICATION ?
       SYSLOG_LEVEL_INFO : SYSLOG_LEVEL_ERROR,
       "Received disconnect from %s port %d:"
       "%u: %.400s", ssh_remote_ipaddr(ssh),
       ssh_remote_port(ssh), reason, msg);
   free(msg);
   return SSH_ERR_DISCONNECTED;
  case 128:
   if ((r = sshpkt_get_u32(ssh, &seqnr)) != 0)
    return r;
   debug("Received SSH2_MSG_UNIMPLEMENTED for %u",
       seqnr);
   break;
  default:
   return 0;
  }
 }
}
