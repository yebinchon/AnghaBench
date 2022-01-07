
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct show_state {scalar_t__ proto; int flags; TYPE_1__* rule; } ;
struct format_opts {int dummy; } ;
struct buf_pr {int dummy; } ;
struct TYPE_6__ {int opcode; int len; } ;
typedef TYPE_2__ ipfw_insn ;
struct TYPE_5__ {int act_ofs; TYPE_2__* cmd; } ;


 scalar_t__ F_LEN (TYPE_2__*) ;
 int F_OR ;
 int HAVE_PROTO ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IPPROTO_IPV6 ;



 int bprintf (struct buf_pr*,char*) ;
 TYPE_2__* print_opcode (struct buf_pr*,struct format_opts*,struct show_state*,int const) ;

__attribute__((used)) static void
print_proto(struct buf_pr *bp, struct format_opts *fo,
    struct show_state *state)
{
 ipfw_insn *cmd;
 int l, proto, ip4, ip6;


 proto = ip4 = ip6 = 0;
 for (l = state->rule->act_ofs, cmd = state->rule->cmd;
     l > 0; l -= F_LEN(cmd), cmd += F_LEN(cmd)) {
  switch (cmd->opcode) {
  case 128:
   proto++;
   break;
  case 130:
   ip4 = 1;
   if (cmd->len & F_OR)
    ip4++;
   break;
  case 129:
   ip6 = 1;
   if (cmd->len & F_OR)
    ip6++;
   break;
  default:
   continue;
  }
 }
 if (proto == 0 && ip4 == 0 && ip6 == 0) {
  state->proto = IPPROTO_IP;
  state->flags |= HAVE_PROTO;
  bprintf(bp, " ip");
  return;
 }

 cmd = ((void*)0);
 if (ip4 || ip6)
  cmd = print_opcode(bp, fo, state, ip4 > ip6 ? 130: 129);
 if (cmd != ((void*)0) && (cmd->len & F_OR))
  cmd = print_opcode(bp, fo, state, ip4 > ip6 ? 129: 130);
 if (cmd == ((void*)0) || (cmd->len & F_OR))
  for (l = proto; l > 0; l--) {
   cmd = print_opcode(bp, fo, state, 128);
   if (cmd == ((void*)0) || (cmd->len & F_OR) == 0)
    break;
  }

 state->flags |= HAVE_PROTO;
 if (state->proto == 0 && ip6 != 0)
  state->proto = IPPROTO_IPV6;
}
