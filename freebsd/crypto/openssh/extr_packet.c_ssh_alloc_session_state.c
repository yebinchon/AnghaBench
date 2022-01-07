
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ packets; } ;
struct TYPE_3__ {scalar_t__ packets; } ;
struct ssh {int connection_in; int connection_out; int max_packet_size; int packet_timeout_ms; int initialized; int rekeying; int * outgoing_packet; int * incoming_packet; int * output; int * input; struct ssh* state; TYPE_2__ p_read; TYPE_1__ p_send; int public_keys; int private_keys; int outgoing; } ;
struct session_state {int connection_in; int connection_out; int max_packet_size; int packet_timeout_ms; int initialized; int rekeying; int * outgoing_packet; int * incoming_packet; int * output; int * input; struct session_state* state; TYPE_2__ p_read; TYPE_1__ p_send; int public_keys; int private_keys; int outgoing; } ;


 int TAILQ_INIT (int *) ;
 struct ssh* calloc (int,int) ;
 int free (struct ssh*) ;
 int sshbuf_free (int *) ;
 void* sshbuf_new () ;

struct ssh *
ssh_alloc_session_state(void)
{
 struct ssh *ssh = ((void*)0);
 struct session_state *state = ((void*)0);

 if ((ssh = calloc(1, sizeof(*ssh))) == ((void*)0) ||
     (state = calloc(1, sizeof(*state))) == ((void*)0) ||
     (state->input = sshbuf_new()) == ((void*)0) ||
     (state->output = sshbuf_new()) == ((void*)0) ||
     (state->outgoing_packet = sshbuf_new()) == ((void*)0) ||
     (state->incoming_packet = sshbuf_new()) == ((void*)0))
  goto fail;
 TAILQ_INIT(&state->outgoing);
 TAILQ_INIT(&ssh->private_keys);
 TAILQ_INIT(&ssh->public_keys);
 state->connection_in = -1;
 state->connection_out = -1;
 state->max_packet_size = 32768;
 state->packet_timeout_ms = -1;
 state->p_send.packets = state->p_read.packets = 0;
 state->initialized = 1;




 state->rekeying = 1;
 ssh->state = state;
 return ssh;
 fail:
 if (state) {
  sshbuf_free(state->input);
  sshbuf_free(state->output);
  sshbuf_free(state->incoming_packet);
  sshbuf_free(state->outgoing_packet);
  free(state);
 }
 free(ssh);
 return ((void*)0);
}
