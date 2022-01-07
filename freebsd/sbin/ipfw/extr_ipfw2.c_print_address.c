
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct show_state {int flags; TYPE_1__* rule; } ;
struct format_opts {int dummy; } ;
struct buf_pr {int dummy; } ;
struct TYPE_6__ {int opcode; int len; } ;
typedef TYPE_2__ ipfw_insn ;
struct TYPE_5__ {int act_ofs; TYPE_2__* cmd; } ;


 scalar_t__ F_LEN (TYPE_2__*) ;
 int F_OR ;
 int bprintf (struct buf_pr*,char*) ;
 scalar_t__ match_opcode (int,int const*,size_t) ;
 int print_instruction (struct buf_pr*,struct format_opts*,struct show_state*,TYPE_2__*) ;

__attribute__((used)) static void
print_address(struct buf_pr *bp, struct format_opts *fo,
    struct show_state *state, const int opcodes[], size_t nops, int portop,
    int flag)
{
 ipfw_insn *cmd;
 int count, l, portcnt, pf;

 count = portcnt = 0;
 for (l = state->rule->act_ofs, cmd = state->rule->cmd;
     l > 0; l -= F_LEN(cmd), cmd += F_LEN(cmd)) {
  if (match_opcode(cmd->opcode, opcodes, nops))
   count++;
  else if (cmd->opcode == portop)
   portcnt++;
 }
 if (count == 0)
  bprintf(bp, " any");
 for (l = state->rule->act_ofs, cmd = state->rule->cmd;
     l > 0 && count > 0; l -= F_LEN(cmd), cmd += F_LEN(cmd)) {
  if (!match_opcode(cmd->opcode, opcodes, nops))
   continue;
  print_instruction(bp, fo, state, cmd);
  if ((cmd->len & F_OR) == 0)
   break;
  count--;
 }




 if (portcnt == 1) {
  for (l = state->rule->act_ofs, cmd = state->rule->cmd, pf = 0;
      l > 0; l -= F_LEN(cmd), cmd += F_LEN(cmd)) {
   if (cmd->opcode != portop) {
    pf = (cmd->len & F_OR);
    continue;
   }

   if (pf == 0 && (cmd->len & F_OR) == 0)
    print_instruction(bp, fo, state, cmd);
   break;
  }
 }
 state->flags |= flag;
}
