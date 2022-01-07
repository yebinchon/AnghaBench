
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cprint (int,char*,char const*) ;

__attribute__((used)) static void free_strings(const char *name)
{
    cprint(1, "free_getarg_strings (&opt.%s);\n", name);
}
