
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
typedef int ssh_packet_hook_fn ;
struct TYPE_2__ {void* hook_in_ctx; int * hook_in; } ;



void
ssh_packet_set_input_hook(struct ssh *ssh, ssh_packet_hook_fn *hook, void *ctx)
{
 ssh->state->hook_in = hook;
 ssh->state->hook_in_ctx = ctx;
}
