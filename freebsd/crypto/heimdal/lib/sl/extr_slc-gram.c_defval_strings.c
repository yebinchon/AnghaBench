
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assignment {int dummy; } ;


 int cprint (int,char*,char const*) ;

__attribute__((used)) static void defval_strings(const char *name, struct assignment *defval)
{
    cprint(1, "opt.%s.num_strings = 0;\n", name);
    cprint(1, "opt.%s.strings = NULL;\n", name);
}
