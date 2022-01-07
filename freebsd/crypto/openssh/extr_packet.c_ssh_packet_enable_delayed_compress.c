
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshcomp {int enabled; scalar_t__ type; } ;
struct ssh {struct session_state* state; } ;
struct session_state {int after_authentication; TYPE_1__** newkeys; } ;
struct TYPE_2__ {struct sshcomp comp; } ;


 scalar_t__ COMP_DELAYED ;
 int MODE_MAX ;
 int MODE_OUT ;
 int ssh_packet_init_compression (struct ssh*) ;
 int start_compression_in (struct ssh*) ;
 int start_compression_out (struct ssh*,int) ;

__attribute__((used)) static int
ssh_packet_enable_delayed_compress(struct ssh *ssh)
{
 struct session_state *state = ssh->state;
 struct sshcomp *comp = ((void*)0);
 int r, mode;





 state->after_authentication = 1;
 for (mode = 0; mode < MODE_MAX; mode++) {

  if (state->newkeys[mode] == ((void*)0))
   continue;
  comp = &state->newkeys[mode]->comp;
  if (comp && !comp->enabled && comp->type == COMP_DELAYED) {
   if ((r = ssh_packet_init_compression(ssh)) != 0)
    return r;
   if (mode == MODE_OUT) {
    if ((r = start_compression_out(ssh, 6)) != 0)
     return r;
   } else {
    if ((r = start_compression_in(ssh)) != 0)
     return r;
   }
   comp->enabled = 1;
  }
 }
 return 0;
}
