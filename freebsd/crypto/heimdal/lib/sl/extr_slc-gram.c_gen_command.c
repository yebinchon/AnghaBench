
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; } ;
struct assignment {TYPE_1__ u; int name; struct assignment* next; } ;


 int cfile ;
 int cprint (int,char*,...) ;
 struct assignment* find (struct assignment*,char*) ;
 int fprintf (int ,char*,...) ;
 int gen_name (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static void
gen_command(struct assignment *as)
{
    struct assignment *a, *b;
    char *f;
    a = find(as, "name");
    f = strdup(a->u.value);
    gen_name(f);
    cprint(1, "    { ");
    fprintf(cfile, "\"%s\", ", a->u.value);
    fprintf(cfile, "%s_wrap, ", f);
    b = find(as, "argument");
    if(b)
 fprintf(cfile, "\"%s %s\", ", a->u.value, b->u.value);
    else
 fprintf(cfile, "\"%s\", ", a->u.value);
    b = find(as, "help");
    if(b)
 fprintf(cfile, "\"%s\"", b->u.value);
    else
 fprintf(cfile, "NULL");
    fprintf(cfile, " },\n");
    for(a = a->next; a != ((void*)0); a = a->next)
 if(strcmp(a->name, "name") == 0)
     cprint(1, "    { \"%s\" },\n", a->u.value);
    cprint(0, "\n");
}
