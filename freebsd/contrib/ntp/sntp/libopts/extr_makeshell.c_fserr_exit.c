
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int fserr_warn (char const*,char const*,char const*) ;
 int option_exits (int ) ;

void
fserr_exit(char const * prog, char const * op, char const * fname)
{
    fserr_warn(prog, op, fname);
    option_exits(EXIT_FAILURE);
}
