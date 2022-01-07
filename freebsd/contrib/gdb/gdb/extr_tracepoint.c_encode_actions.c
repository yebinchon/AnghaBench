
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct tracepoint {int address; struct action_line* actions; } ;
struct expression {TYPE_1__* elts; } ;
struct collection_list {int dummy; } ;
struct cmd_list_element {int dummy; } ;
struct cleanup {int dummy; } ;
struct agent_reqs {int max_height; int reg_mask_len; int* reg_mask; int min_height; int flaw; } ;
struct agent_expr {int dummy; } ;
struct action_line {char* action; struct action_line* next; } ;
struct TYPE_2__ {int opcode; int longconst; int symbol; int type; } ;
typedef int LONGEST ;


 int NUM_REGS ;


 int QUIT ;
 int TARGET_VIRTUAL_FRAME_POINTER (int ,int*,int *) ;
 unsigned long TYPE_LENGTH (int ) ;

 unsigned long VALUE_ADDRESS (struct value*) ;
 unsigned long VALUE_OFFSET (struct value*) ;
 int add_aexpr (struct collection_list*,struct agent_expr*) ;
 int add_local_symbols (struct collection_list*,int ,int,int ,char) ;
 int add_memrange (struct collection_list*,int,unsigned long,unsigned long) ;
 int add_register (struct collection_list*,int) ;
 int agent_flaw_none ;
 int ax_reqs (struct agent_expr*,struct agent_reqs*) ;
 int block_for_pc (int ) ;
 int check_typedef (int ) ;
 int clear_collection_list (struct collection_list*) ;
 scalar_t__ cmd_cfunc_eq (struct cmd_list_element*,int ) ;
 int cmdlist ;
 int collect_pseudocommand ;
 int collect_symbol (struct collection_list*,int ,int,int ) ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 int end_actions_pseudocommand ;
 int error (char*,...) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 struct agent_expr* gen_trace_for_expr (int ,struct expression*) ;
 int info_verbose ;
 scalar_t__ isspace (int) ;
 struct cmd_list_element* lookup_cmd (char**,int ,char*,int,int) ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct cleanup* make_cleanup_free_agent_expr (struct agent_expr*) ;
 int memrange_sortmerge (struct collection_list*) ;
 struct expression* parse_exp_1 (char**,int ,int) ;
 int printf_filtered (char*) ;
 struct collection_list stepping_list ;
 char* strchr (char*,char) ;
 char** stringify_collection_list (struct collection_list*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 struct collection_list tracepoint_list ;
 int while_stepping_pseudocommand ;

__attribute__((used)) static void
encode_actions (struct tracepoint *t, char ***tdp_actions,
  char ***stepping_actions)
{
  static char tdp_buff[2048], step_buff[2048];
  char *action_exp;
  struct expression *exp = ((void*)0);
  struct action_line *action;
  int i;
  struct value *tempval;
  struct collection_list *collect;
  struct cmd_list_element *cmd;
  struct agent_expr *aexpr;
  int frame_reg;
  LONGEST frame_offset;


  clear_collection_list (&tracepoint_list);
  clear_collection_list (&stepping_list);
  collect = &tracepoint_list;

  *tdp_actions = ((void*)0);
  *stepping_actions = ((void*)0);

  TARGET_VIRTUAL_FRAME_POINTER (t->address, &frame_reg, &frame_offset);

  for (action = t->actions; action; action = action->next)
    {
      QUIT;
      action_exp = action->action;
      while (isspace ((int) *action_exp))
 action_exp++;

      if (*action_exp == '#')
 return;

      cmd = lookup_cmd (&action_exp, cmdlist, "", -1, 1);
      if (cmd == 0)
 error ("Bad action list item: %s", action_exp);

      if (cmd_cfunc_eq (cmd, collect_pseudocommand))
 {
   do
     {
       QUIT;
       while (isspace ((int) *action_exp))
  action_exp++;

       if (0 == strncasecmp ("$reg", action_exp, 4))
  {
    for (i = 0; i < NUM_REGS; i++)
      add_register (collect, i);
    action_exp = strchr (action_exp, ',');
  }
       else if (0 == strncasecmp ("$arg", action_exp, 4))
  {
    add_local_symbols (collect,
         t->address,
         frame_reg,
         frame_offset,
         'A');
    action_exp = strchr (action_exp, ',');
  }
       else if (0 == strncasecmp ("$loc", action_exp, 4))
  {
    add_local_symbols (collect,
         t->address,
         frame_reg,
         frame_offset,
         'L');
    action_exp = strchr (action_exp, ',');
  }
       else
  {
    unsigned long addr, len;
    struct cleanup *old_chain = ((void*)0);
    struct cleanup *old_chain1 = ((void*)0);
    struct agent_reqs areqs;

    exp = parse_exp_1 (&action_exp,
         block_for_pc (t->address), 1);
    old_chain = make_cleanup (free_current_contents, &exp);

    switch (exp->elts[0].opcode)
      {
      case 130:
        i = exp->elts[1].longconst;
        if (info_verbose)
   printf_filtered ("OP_REGISTER: ");
        add_register (collect, i);
        break;

      case 128:

        tempval = evaluate_expression (exp);
        addr = VALUE_ADDRESS (tempval) + VALUE_OFFSET (tempval);
        len = TYPE_LENGTH (check_typedef (exp->elts[1].type));
        add_memrange (collect, -1, addr, len);
        break;

      case 129:
        collect_symbol (collect,
          exp->elts[2].symbol,
          frame_reg,
          frame_offset);
        break;

      default:
        aexpr = gen_trace_for_expr (t->address, exp);

        old_chain1 = make_cleanup_free_agent_expr (aexpr);

        ax_reqs (aexpr, &areqs);
        if (areqs.flaw != agent_flaw_none)
   error ("malformed expression");

        if (areqs.min_height < 0)
   error ("gdb: Internal error: expression has min height < 0");
        if (areqs.max_height > 20)
   error ("expression too complicated, try simplifying");

        discard_cleanups (old_chain1);
        add_aexpr (collect, aexpr);


        if (areqs.reg_mask_len > 0)
   {
     int ndx1;
     int ndx2;

     for (ndx1 = 0; ndx1 < areqs.reg_mask_len; ndx1++)
       {
         QUIT;
         if (areqs.reg_mask[ndx1] != 0)
    {

      for (ndx2 = 0; ndx2 < 8; ndx2++)
        if (areqs.reg_mask[ndx1] & (1 << ndx2))

          add_register (collect, ndx1 * 8 + ndx2);
    }
       }
   }
        break;
      }
    do_cleanups (old_chain);
  }
     }
   while (action_exp && *action_exp++ == ',');
 }
      else if (cmd_cfunc_eq (cmd, while_stepping_pseudocommand))
 {
   collect = &stepping_list;
 }
      else if (cmd_cfunc_eq (cmd, end_actions_pseudocommand))
 {
   if (collect == &stepping_list)
     collect = &tracepoint_list;
   else
     break;
 }
    }
  memrange_sortmerge (&tracepoint_list);
  memrange_sortmerge (&stepping_list);

  *tdp_actions = stringify_collection_list (&tracepoint_list, tdp_buff);
  *stepping_actions = stringify_collection_list (&stepping_list, step_buff);
}
