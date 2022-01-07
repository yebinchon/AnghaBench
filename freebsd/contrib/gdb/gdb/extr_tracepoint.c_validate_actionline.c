
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracepoint {int step_count; int address; } ;
struct expression {TYPE_1__* elts; } ;
struct cmd_list_element {int dummy; } ;
struct cleanup {int dummy; } ;
struct agent_reqs {scalar_t__ flaw; scalar_t__ min_height; int max_height; struct expression** reg_mask; } ;
struct agent_expr {scalar_t__ len; } ;
typedef enum actionline_type { ____Placeholder_actionline_type } actionline_type ;
struct TYPE_2__ {scalar_t__ opcode; int symbol; } ;


 int BADLINE ;
 char* DEPRECATED_SYMBOL_NAME (int ) ;
 int END ;
 int GENERIC ;
 scalar_t__ LOC_CONST ;
 scalar_t__ LOC_OPTIMIZED_OUT ;
 scalar_t__ MAX_AGENT_EXPR_LEN ;
 scalar_t__ OP_VAR_VALUE ;
 int QUIT ;
 int STEPPING ;
 scalar_t__ SYMBOL_CLASS (int ) ;
 int SYMBOL_VALUE (int ) ;
 scalar_t__ agent_flaw_none ;
 int ax_reqs (struct agent_expr*,struct agent_reqs*) ;
 int block_for_pc (int ) ;
 scalar_t__ cmd_cfunc_eq (struct cmd_list_element*,int ) ;
 int cmdlist ;
 int collect_pseudocommand ;
 int do_cleanups (struct cleanup*) ;
 int end_actions_pseudocommand ;
 int error (char*) ;
 int free_current_contents ;
 struct agent_expr* gen_trace_for_expr (int ,struct expression*) ;
 scalar_t__ isspace (int) ;
 struct cmd_list_element* lookup_cmd (char**,int ,char*,int,int) ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 int make_cleanup_free_agent_expr (struct agent_expr*) ;
 struct expression* parse_exp_1 (char**,int ,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int strtol (char*,char**,int ) ;
 int warning (char*,char*,...) ;
 int while_stepping_pseudocommand ;
 int xfree ;

enum actionline_type
validate_actionline (char **line, struct tracepoint *t)
{
  struct cmd_list_element *c;
  struct expression *exp = ((void*)0);
  struct cleanup *old_chain = ((void*)0);
  char *p;


  if (*line == ((void*)0))
    return END;

  for (p = *line; isspace ((int) *p);)
    p++;


  if (*p == '\0')
    return BADLINE;

  if (*p == '#')
    return GENERIC;

  c = lookup_cmd (&p, cmdlist, "", -1, 1);
  if (c == 0)
    {
      warning ("'%s' is not an action that I know, or is ambiguous.", p);
      return BADLINE;
    }

  if (cmd_cfunc_eq (c, collect_pseudocommand))
    {
      struct agent_expr *aexpr;
      struct agent_reqs areqs;

      do
 {
   QUIT;
   while (isspace ((int) *p))
     p++;

   if (*p == '$')
     {
       if ((0 == strncasecmp ("reg", p + 1, 3)) ||
    (0 == strncasecmp ("arg", p + 1, 3)) ||
    (0 == strncasecmp ("loc", p + 1, 3)))
  {
    p = strchr (p, ',');
    continue;
  }

     }
   exp = parse_exp_1 (&p, block_for_pc (t->address), 1);
   old_chain = make_cleanup (free_current_contents, &exp);

   if (exp->elts[0].opcode == OP_VAR_VALUE)
     {
       if (SYMBOL_CLASS (exp->elts[2].symbol) == LOC_CONST)
  {
    warning ("constant %s (value %ld) will not be collected.",
      DEPRECATED_SYMBOL_NAME (exp->elts[2].symbol),
      SYMBOL_VALUE (exp->elts[2].symbol));
    return BADLINE;
  }
       else if (SYMBOL_CLASS (exp->elts[2].symbol) == LOC_OPTIMIZED_OUT)
  {
    warning ("%s is optimized away and cannot be collected.",
      DEPRECATED_SYMBOL_NAME (exp->elts[2].symbol));
    return BADLINE;
  }
     }



   aexpr = gen_trace_for_expr (t->address, exp);
   make_cleanup_free_agent_expr (aexpr);

   if (aexpr->len > MAX_AGENT_EXPR_LEN)
     error ("expression too complicated, try simplifying");

   ax_reqs (aexpr, &areqs);
   (void) make_cleanup (xfree, areqs.reg_mask);

   if (areqs.flaw != agent_flaw_none)
     error ("malformed expression");

   if (areqs.min_height < 0)
     error ("gdb: Internal error: expression has min height < 0");

   if (areqs.max_height > 20)
     error ("expression too complicated, try simplifying");

   do_cleanups (old_chain);
 }
      while (p && *p++ == ',');
      return GENERIC;
    }
  else if (cmd_cfunc_eq (c, while_stepping_pseudocommand))
    {
      char *steparg;

      while (isspace ((int) *p))
 p++;
      steparg = p;

      if (*p == '\0' ||
   (t->step_count = strtol (p, &p, 0)) == 0)
 {
   warning ("'%s': bad step-count; command ignored.", *line);
   return BADLINE;
 }
      return STEPPING;
    }
  else if (cmd_cfunc_eq (c, end_actions_pseudocommand))
    return END;
  else
    {
      warning ("'%s' is not a supported tracepoint action.", *line);
      return BADLINE;
    }
}
