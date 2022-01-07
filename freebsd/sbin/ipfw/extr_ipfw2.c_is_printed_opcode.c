
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct show_state {TYPE_1__* rule; int * printed; } ;
typedef int ipfw_insn ;
struct TYPE_2__ {int const* cmd; } ;



__attribute__((used)) static uint8_t
is_printed_opcode(struct show_state *state, const ipfw_insn *cmd)
{

 return (state->printed[cmd - state->rule->cmd]);
}
