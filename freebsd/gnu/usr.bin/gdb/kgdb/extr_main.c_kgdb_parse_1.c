
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int do_cleanups (struct cleanup*) ;
 int free_current_contents ;
 scalar_t__ gdb_evaluate_expression (struct expression*,struct value**) ;
 scalar_t__ gdb_parse_exp_1 (char**,int *,int ,struct expression**) ;
 struct ui_file* gdb_stderr ;
 struct cleanup* make_cleanup (int ,char*) ;
 struct ui_file* parse_gdberr ;
 scalar_t__ value_as_address (struct value*) ;
 int xfree ;
 char* xstrdup (char const*) ;

CORE_ADDR
kgdb_parse_1(const char *exp, int quiet)
{
 struct ui_file *old_stderr;
 struct cleanup *old_chain;
 struct expression *expr;
 struct value *val;
 char *s;
 CORE_ADDR n;

 old_stderr = gdb_stderr;
 if (quiet)
  gdb_stderr = parse_gdberr;
 n = 0;
 s = xstrdup(exp);
 old_chain = make_cleanup(xfree, s);
 if (gdb_parse_exp_1(&s, ((void*)0), 0, &expr) && *s == '\0') {
  make_cleanup(free_current_contents, &expr);
  if (gdb_evaluate_expression(expr, &val))
      n = value_as_address(val);
 }
 do_cleanups(old_chain);
 gdb_stderr = old_stderr;
 return (n);
}
