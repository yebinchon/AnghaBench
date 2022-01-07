
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {struct session_state* state; } ;
struct TYPE_2__ {int seqnr; } ;
struct session_state {size_t packet_discard_mac_already; int incoming_packet; TYPE_1__ p_read; scalar_t__ packet_discard_mac; } ;
typedef int buf ;


 size_t PACKET_MAX_SIZE ;
 int SSH_ERR_MAC_INVALID ;
 int logit (char*,int ,int ) ;
 int mac_compute (scalar_t__,int ,int ,size_t,int *,int ) ;
 int memset (char*,char,int) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 size_t sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 int sshbuf_put (int ,char*,int) ;

int
ssh_packet_stop_discard(struct ssh *ssh)
{
 struct session_state *state = ssh->state;
 int r;

 if (state->packet_discard_mac) {
  char buf[1024];
  size_t dlen = PACKET_MAX_SIZE;

  if (dlen > state->packet_discard_mac_already)
   dlen -= state->packet_discard_mac_already;
  memset(buf, 'a', sizeof(buf));
  while (sshbuf_len(state->incoming_packet) < dlen)
   if ((r = sshbuf_put(state->incoming_packet, buf,
       sizeof(buf))) != 0)
    return r;
  (void) mac_compute(state->packet_discard_mac,
      state->p_read.seqnr,
      sshbuf_ptr(state->incoming_packet), dlen,
      ((void*)0), 0);
 }
 logit("Finished discarding for %.200s port %d",
     ssh_remote_ipaddr(ssh), ssh_remote_port(ssh));
 return SSH_ERR_MAC_INVALID;
}
