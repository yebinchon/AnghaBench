
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sshmac {scalar_t__ enabled; scalar_t__ etm; } ;
struct sshenc {int cipher; } ;
struct ssh {struct session_state* state; } ;
struct session_state {size_t packet_discard_mac_already; int input; scalar_t__ packet_discard; struct sshmac* packet_discard_mac; } ;


 int SSH_ERR_MAC_INVALID ;
 int cipher_is_cbc (int ) ;
 int ssh_packet_stop_discard (struct ssh*) ;
 scalar_t__ sshbuf_len (int ) ;
 int sshpkt_disconnect (struct ssh*,char*) ;

__attribute__((used)) static int
ssh_packet_start_discard(struct ssh *ssh, struct sshenc *enc,
    struct sshmac *mac, size_t mac_already, u_int discard)
{
 struct session_state *state = ssh->state;
 int r;

 if (enc == ((void*)0) || !cipher_is_cbc(enc->cipher) || (mac && mac->etm)) {
  if ((r = sshpkt_disconnect(ssh, "Packet corrupt")) != 0)
   return r;
  return SSH_ERR_MAC_INVALID;
 }




 if (mac && mac->enabled) {
  state->packet_discard_mac = mac;
  state->packet_discard_mac_already = mac_already;
 }
 if (sshbuf_len(state->input) >= discard)
  return ssh_packet_stop_discard(ssh);
 state->packet_discard = discard - sshbuf_len(state->input);
 return 0;
}
