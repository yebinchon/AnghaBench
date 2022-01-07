
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {struct cmd* c_next; } ;


 struct cmd* cmds ;

void
cmd_register(struct cmd *p)
{
 p->c_next = cmds;
 cmds = p;
}
