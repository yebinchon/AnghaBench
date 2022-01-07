
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct show_state {TYPE_1__* rule; } ;
struct format_opts {int dummy; } ;
struct buf_pr {int dummy; } ;
struct TYPE_7__ {int opcode; } ;
typedef TYPE_2__ ipfw_insn ;
struct TYPE_6__ {int act_ofs; TYPE_2__* cmd; } ;


 scalar_t__ F_LEN (TYPE_2__*) ;
 int O_NOP ;
 int print_instruction (struct buf_pr*,struct format_opts*,struct show_state*,TYPE_2__*) ;

__attribute__((used)) static ipfw_insn *
print_opcode(struct buf_pr *bp, struct format_opts *fo,
    struct show_state *state, int opcode)
{
 ipfw_insn *cmd;
 int l;

 for (l = state->rule->act_ofs, cmd = state->rule->cmd;
     l > 0; l -= F_LEN(cmd), cmd += F_LEN(cmd)) {

  if (opcode >= 0 && cmd->opcode != opcode)
   continue;




  if (cmd->opcode == O_NOP && opcode != O_NOP)
   continue;
  if (!print_instruction(bp, fo, state, cmd))
   continue;
  return (cmd);
 }
 return (((void*)0));
}
