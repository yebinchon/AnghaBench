
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Command ;


 scalar_t__ cmdtab ;
 scalar_t__ cmdtab2 ;
 scalar_t__ genget (char*,char**,int) ;

__attribute__((used)) static Command
*getcmd(char *name)
{
    Command *cm;

    if ((cm = (Command *) genget(name, (char **) cmdtab, sizeof(Command))))
 return cm;
    return (Command *) genget(name, (char **) cmdtab2, sizeof(Command));
}
