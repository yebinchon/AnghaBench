
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct show_state {int flags; } ;
struct ip_fw_rule {int set; int flags; int rulenum; } ;
struct ip_fw_bcounter {scalar_t__ timestamp; int bcnt; int pcnt; } ;
struct format_opts {int set_mask; scalar_t__ pcwidth; scalar_t__ bcwidth; } ;
struct cmdline_opts {scalar_t__ do_time; scalar_t__ comment_only; scalar_t__ do_compact; scalar_t__ show_sets; } ;
struct buf_pr {int dummy; } ;
struct TYPE_4__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int HAVE_DSTIP ;
 int HAVE_PROTO ;
 int HAVE_SRCIP ;
 int IPFW_RULE_JUSTOPTS ;
 int IPFW_RULE_NOOPT ;



 int O_IP_DSTPORT ;
 int O_IP_SRCPORT ;
 int O_NOP ;
 int O_PROB ;
 scalar_t__ TIMESTAMP_NUMERIC ;
 scalar_t__ TIMESTAMP_STRING ;
 int _long_to_time (scalar_t__) ;
 int * action_opcodes ;
 int bprintf (struct buf_pr*,char*,...) ;
 int ctime (int *) ;
 int * dst_opcodes ;
 int free_show_state (struct show_state*) ;
 scalar_t__ init_show_state (struct show_state*,struct ip_fw_rule*) ;
 int * modifier_opcodes ;
 int nitems (int *) ;
 int pr_u64 (struct buf_pr*,int *,scalar_t__) ;
 TYPE_1__* print_action (struct buf_pr*,struct format_opts*,struct show_state*,int ) ;
 int print_address (struct buf_pr*,struct format_opts*,struct show_state*,int *,int,int ,int) ;
 TYPE_1__* print_opcode (struct buf_pr*,struct format_opts*,struct show_state*,int) ;
 int print_proto (struct buf_pr*,struct format_opts*,struct show_state*) ;
 int * src_opcodes ;
 char* strchr (char*,char) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;
 int warn (char*) ;

__attribute__((used)) static void
show_static_rule(struct cmdline_opts *co, struct format_opts *fo,
    struct buf_pr *bp, struct ip_fw_rule *rule, struct ip_fw_bcounter *cntr)
{
 struct show_state state;
 ipfw_insn *cmd;
 static int twidth = 0;
 int i;


 if ((fo->set_mask & (1 << rule->set)) == 0) {

  if (!co->show_sets)
   return;
  else
   bprintf(bp, "# DISABLED ");
 }
 if (init_show_state(&state, rule) != 0) {
  warn("init_show_state() failed");
  return;
 }
 bprintf(bp, "%05u ", rule->rulenum);


 if (fo->pcwidth > 0 || fo->bcwidth > 0) {
  pr_u64(bp, &cntr->pcnt, fo->pcwidth);
  pr_u64(bp, &cntr->bcnt, fo->bcwidth);
 }


 if (co->do_time == TIMESTAMP_NUMERIC)
  bprintf(bp, "%10u ", cntr->timestamp);
 else if (co->do_time == TIMESTAMP_STRING) {
  char timestr[30];
  time_t t = (time_t)0;

  if (twidth == 0) {
   strcpy(timestr, ctime(&t));
   *strchr(timestr, '\n') = '\0';
   twidth = strlen(timestr);
  }
  if (cntr->timestamp > 0) {
   t = _long_to_time(cntr->timestamp);

   strcpy(timestr, ctime(&t));
   *strchr(timestr, '\n') = '\0';
   bprintf(bp, "%s ", timestr);
  } else {
   bprintf(bp, "%*s", twidth, " ");
  }
 }


 if (co->show_sets)
  bprintf(bp, "set %d ", rule->set);


 cmd = print_opcode(bp, fo, &state, O_PROB);

 for (i = 0; i < nitems(action_opcodes); i++) {
  cmd = print_action(bp, fo, &state, action_opcodes[i]);
  if (cmd == ((void*)0))
   continue;

  switch (cmd->opcode) {
  case 130:
   goto end;
  case 129:
  case 128:

   continue;
  }
  break;
 }

 for (i = 0; i < nitems(modifier_opcodes); i++)
  print_action(bp, fo, &state, modifier_opcodes[i]);



 if (co->comment_only != 0)
  goto end;

 if (rule->flags & IPFW_RULE_JUSTOPTS) {
  state.flags |= HAVE_PROTO | HAVE_SRCIP | HAVE_DSTIP;
  goto justopts;
 }

 print_proto(bp, fo, &state);
 if (co->do_compact != 0 && (rule->flags & IPFW_RULE_NOOPT))
  goto justopts;


 bprintf(bp, " from");
 print_address(bp, fo, &state, src_opcodes, nitems(src_opcodes),
     O_IP_SRCPORT, HAVE_SRCIP);


 bprintf(bp, " to");
 print_address(bp, fo, &state, dst_opcodes, nitems(dst_opcodes),
     O_IP_DSTPORT, HAVE_DSTIP);

justopts:

 while (print_opcode(bp, fo, &state, -1))
  ;
end:

 cmd = print_opcode(bp, fo, &state, O_NOP);
 if (co->comment_only != 0 && cmd == ((void*)0))
  bprintf(bp, " // ...");
 bprintf(bp, "\n");
 free_show_state(&state);
}
