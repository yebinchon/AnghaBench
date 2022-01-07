
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int assignment; } ;
struct assignment {TYPE_1__ u; struct assignment* next; } ;


 int cprint (int,char*,...) ;
 int gen_command (int ) ;
 int gen_wrapper (int ) ;
 int hname ;
 int hprint (int ,char*) ;

__attribute__((used)) static void
gen(struct assignment *as)
{
    struct assignment *a;
    cprint(0, "#include <stdio.h>\n");
    cprint(0, "#include <getarg.h>\n");
    cprint(0, "#include <sl.h>\n");
    cprint(0, "#include \"%s\"\n\n", hname);

    hprint(0, "#include <stdio.h>\n");
    hprint(0, "#include <sl.h>\n");
    hprint(0, "\n");


    for(a = as; a != ((void*)0); a = a->next)
 gen_wrapper(a->u.assignment);

    cprint(0, "SL_cmd commands[] = {\n");
    for(a = as; a != ((void*)0); a = a->next)
 gen_command(a->u.assignment);
    cprint(1, "{ NULL }\n");
    cprint(0, "};\n");

    hprint(0, "extern SL_cmd commands[];\n");
}
