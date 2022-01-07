
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct captured_main_args {int argc; char** argv; } ;


 int err (int,char*) ;
 char** reallocf (char**,int) ;

__attribute__((used)) static void
add_arg(struct captured_main_args *args, char *arg)
{

 args->argc++;
 args->argv = reallocf(args->argv, (args->argc + 1) * sizeof(char *));
 if (args->argv == ((void*)0))
  err(1, "Out of memory building argument list");
 args->argv[args->argc] = arg;
}
