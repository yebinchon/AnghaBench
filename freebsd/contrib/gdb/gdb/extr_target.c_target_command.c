
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs_filtered (char*,int ) ;
 int gdb_stdout ;

__attribute__((used)) static void
target_command (char *arg, int from_tty)
{
  fputs_filtered ("Argument required (target name).  Try `help target'\n",
    gdb_stdout);
}
