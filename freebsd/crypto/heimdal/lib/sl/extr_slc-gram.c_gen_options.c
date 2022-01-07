
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type_handler {int c_type; } ;
struct TYPE_2__ {int assignment; } ;
struct assignment {TYPE_1__ u; } ;


 struct assignment* find (int ,char*) ;
 struct type_handler* find_handler (struct assignment*) ;
 struct assignment* find_next (struct assignment*,char*) ;
 int free (char*) ;
 int hprint (int,char*,...) ;
 char* make_name (int ) ;

__attribute__((used)) static void
gen_options(struct assignment *opt1, const char *name)
{
    struct assignment *tmp;

    hprint(0, "struct %s_options {\n", name);

    for(tmp = opt1;
 tmp != ((void*)0);
 tmp = find_next(tmp, "option")) {
 struct assignment *type;
 struct type_handler *th;
 char *s;

 s = make_name(tmp->u.assignment);
 type = find(tmp->u.assignment, "type");
 th = find_handler(type);
 hprint(1, "%s %s;\n", th->c_type, s);
 free(s);
    }
    hprint(0, "};\n");
}
