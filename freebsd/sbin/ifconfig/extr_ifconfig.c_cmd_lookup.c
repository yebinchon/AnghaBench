
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {scalar_t__ c_iscloneop; int c_name; struct cmd* c_next; } ;


 struct cmd* cmds ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const struct cmd *
cmd_lookup(const char *name, int iscreate)
{
 const struct cmd *p;

 for (p = cmds; p != ((void*)0); p = p->c_next)
  if (strcmp(name, p->c_name) == 0) {
   if (iscreate) {
    if (p->c_iscloneop)
     return p;
   } else {
    if (!p->c_iscloneop)
     return p;
   }
  }
 return ((void*)0);
}
