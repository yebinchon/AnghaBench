
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MON_PMON ;
 int common_open (int *,char*,int,int ,char*) ;
 int pmon_ops ;

__attribute__((used)) static void
pmon_open (char *name, int from_tty)
{
  common_open (&pmon_ops, name, from_tty, MON_PMON, "PMON> ");
}
