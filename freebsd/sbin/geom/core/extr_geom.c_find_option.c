
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_option {char go_char; int * go_name; } ;
struct g_command {struct g_option* gc_options; } ;



__attribute__((used)) static struct g_option *
find_option(struct g_command *cmd, char ch)
{
 struct g_option *opt;
 unsigned i;

 for (i = 0; ; i++) {
  opt = &cmd->gc_options[i];
  if (opt->go_name == ((void*)0))
   return (((void*)0));
  if (opt->go_char == ch)
   return (opt);
 }

 return (((void*)0));
}
