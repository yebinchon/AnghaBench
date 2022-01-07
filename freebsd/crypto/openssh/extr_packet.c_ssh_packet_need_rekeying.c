
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int u_int ;
struct ssh {int compat; int * kex; struct session_state* state; } ;
struct TYPE_8__ {scalar_t__ packets; scalar_t__ blocks; } ;
struct TYPE_7__ {scalar_t__ packets; scalar_t__ blocks; } ;
struct session_state {scalar_t__ rekey_interval; scalar_t__ max_blocks_out; scalar_t__ max_blocks_in; TYPE_4__ p_read; TYPE_3__ p_send; TYPE_2__** newkeys; scalar_t__ rekey_time; int after_authentication; } ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int block_size; } ;
struct TYPE_6__ {TYPE_1__ enc; } ;


 scalar_t__ MAX_PACKETS ;
 size_t MODE_OUT ;
 scalar_t__ ROUNDUP (int ,int ) ;
 int SSH_BUG_NOREKEY ;
 scalar_t__ monotime () ;
 scalar_t__ ssh_packet_is_rekeying (struct ssh*) ;

__attribute__((used)) static int
ssh_packet_need_rekeying(struct ssh *ssh, u_int outbound_packet_len)
{
 struct session_state *state = ssh->state;
 u_int32_t out_blocks;


 if (!state->after_authentication)
  return 0;


 if (ssh->kex == ((void*)0) || ssh_packet_is_rekeying(ssh))
  return 0;


 if (ssh->compat & SSH_BUG_NOREKEY)
  return 0;





 if (state->p_send.packets == 0 && state->p_read.packets == 0)
  return 0;


 if (state->rekey_interval != 0 &&
     (int64_t)state->rekey_time + state->rekey_interval <= monotime())
  return 1;





 if (state->p_send.packets > MAX_PACKETS ||
     state->p_read.packets > MAX_PACKETS)
  return 1;


 out_blocks = ROUNDUP(outbound_packet_len,
     state->newkeys[MODE_OUT]->enc.block_size);
 return (state->max_blocks_out &&
     (state->p_send.blocks + out_blocks > state->max_blocks_out)) ||
     (state->max_blocks_in &&
     (state->p_read.blocks > state->max_blocks_in));
}
