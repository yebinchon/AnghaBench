
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commands {scalar_t__ name; } ;


 struct commands* commands ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct commands *
lookupcmd(const char *name)
{
 struct commands *cmd;

 for (cmd = commands; cmd->name; cmd++) {
  if (strcmp(cmd->name, name) == 0)
   return cmd;
 }
 return ((void*)0);
}
