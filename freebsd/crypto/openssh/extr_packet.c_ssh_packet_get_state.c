
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sshbuf {int dummy; } ;
struct ssh {int kex; struct session_state* state; } ;
struct TYPE_4__ {int bytes; int packets; int blocks; int seqnr; } ;
struct TYPE_3__ {int bytes; int packets; int blocks; int seqnr; } ;
struct session_state {int output; int input; TYPE_2__ p_read; TYPE_1__ p_send; int rekey_interval; int rekey_limit; } ;


 int MODE_IN ;
 int MODE_OUT ;
 int kex_to_blob (struct sshbuf*,int ) ;
 int newkeys_to_blob (struct sshbuf*,struct ssh*,int ) ;
 int sshbuf_put_stringb (struct sshbuf*,int ) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;
 int sshbuf_put_u64 (struct sshbuf*,int ) ;

int
ssh_packet_get_state(struct ssh *ssh, struct sshbuf *m)
{
 struct session_state *state = ssh->state;
 int r;

 if ((r = kex_to_blob(m, ssh->kex)) != 0 ||
     (r = newkeys_to_blob(m, ssh, MODE_OUT)) != 0 ||
     (r = newkeys_to_blob(m, ssh, MODE_IN)) != 0 ||
     (r = sshbuf_put_u64(m, state->rekey_limit)) != 0 ||
     (r = sshbuf_put_u32(m, state->rekey_interval)) != 0 ||
     (r = sshbuf_put_u32(m, state->p_send.seqnr)) != 0 ||
     (r = sshbuf_put_u64(m, state->p_send.blocks)) != 0 ||
     (r = sshbuf_put_u32(m, state->p_send.packets)) != 0 ||
     (r = sshbuf_put_u64(m, state->p_send.bytes)) != 0 ||
     (r = sshbuf_put_u32(m, state->p_read.seqnr)) != 0 ||
     (r = sshbuf_put_u64(m, state->p_read.blocks)) != 0 ||
     (r = sshbuf_put_u32(m, state->p_read.packets)) != 0 ||
     (r = sshbuf_put_u64(m, state->p_read.bytes)) != 0 ||
     (r = sshbuf_put_stringb(m, state->input)) != 0 ||
     (r = sshbuf_put_stringb(m, state->output)) != 0)
  return r;

 return 0;
}
