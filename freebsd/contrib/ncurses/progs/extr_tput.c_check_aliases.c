
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROG_INIT ;
 int PROG_RESET ;
 void* is_init ;
 void* is_reset ;
 void* same_program (char const*,int ) ;

__attribute__((used)) static void
check_aliases(const char *name)
{
    is_init = same_program(name, PROG_INIT);
    is_reset = same_program(name, PROG_RESET);
}
