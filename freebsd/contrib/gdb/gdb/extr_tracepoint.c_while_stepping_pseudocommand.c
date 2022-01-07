
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
while_stepping_pseudocommand (char *args, int from_tty)
{
  error ("This command can only be used in a tracepoint actions list.");
}
