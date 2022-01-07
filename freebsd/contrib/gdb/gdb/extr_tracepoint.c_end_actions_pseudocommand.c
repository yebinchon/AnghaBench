
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
end_actions_pseudocommand (char *args, int from_tty)
{
  error ("This command cannot be used at the top level.");
}
