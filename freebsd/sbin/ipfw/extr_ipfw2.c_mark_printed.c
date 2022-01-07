
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct show_state {int* printed; TYPE_1__* rule; } ;
typedef int ipfw_insn ;
struct TYPE_2__ {int const* cmd; } ;



__attribute__((used)) static void
mark_printed(struct show_state *state, const ipfw_insn *cmd)
{

 state->printed[cmd - state->rule->cmd] = 1;
}
