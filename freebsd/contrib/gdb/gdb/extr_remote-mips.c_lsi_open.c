
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 int BREAK_UNUSED ;
 int MAX_LSI_BREAKPOINTS ;
 int MON_LSI ;
 int common_open (int *,char*,int,int ,char*) ;
 TYPE_1__* lsi_breakpoints ;
 int lsi_ops ;

__attribute__((used)) static void
lsi_open (char *name, int from_tty)
{
  int i;


  for (i = 0; i < MAX_LSI_BREAKPOINTS; i++)
    lsi_breakpoints[i].type = BREAK_UNUSED;

  common_open (&lsi_ops, name, from_tty, MON_LSI, "PMON> ");
}
