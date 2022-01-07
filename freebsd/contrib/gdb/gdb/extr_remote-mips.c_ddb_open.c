
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MON_DDB ;
 int common_open (int *,char*,int,int ,char*) ;
 int ddb_ops ;

__attribute__((used)) static void
ddb_open (char *name, int from_tty)
{
  common_open (&ddb_ops, name, from_tty, MON_DDB, "NEC010>");
}
