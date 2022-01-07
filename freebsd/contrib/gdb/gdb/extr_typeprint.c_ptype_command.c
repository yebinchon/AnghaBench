
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int free_current_contents ;
 int gdb_stdout ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;
 int printf_filtered (char*) ;
 struct type* ptype_eval (struct expression*) ;
 int type_print (struct type*,char*,int ,int) ;
 int whatis_exp (char*,int) ;

__attribute__((used)) static void
ptype_command (char *typename, int from_tty)
{
  struct type *type;
  struct expression *expr;
  struct cleanup *old_chain;

  if (typename == ((void*)0))
    {

      whatis_exp (typename, 1);
    }
  else
    {
      expr = parse_expression (typename);
      old_chain = make_cleanup (free_current_contents, &expr);
      type = ptype_eval (expr);
      if (type != ((void*)0))
 {

   printf_filtered ("type = ");
   type_print (type, "", gdb_stdout, 1);
   printf_filtered ("\n");
   do_cleanups (old_chain);
 }
      else
 {

   do_cleanups (old_chain);
   whatis_exp (typename, 1);
 }
    }
}
