
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct assignment {TYPE_1__ u; } ;


 int cprint (int,char*,char const*,...) ;

__attribute__((used)) static void defval_int(const char *name, struct assignment *defval)
{
    if(defval != ((void*)0))
 cprint(1, "opt.%s = %s;\n", name, defval->u.value);
    else
 cprint(1, "opt.%s = 0;\n", name);
}
