
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct assignment {TYPE_1__ u; } ;


 int asprintf (char**,char*,int ,...) ;
 struct assignment* find (struct assignment*,char*) ;
 int gen_name (char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static char *
make_name(struct assignment *as)
{
    struct assignment *lopt;
    struct assignment *type;
    char *s;

    lopt = find(as, "long");
    if(lopt == ((void*)0))
 lopt = find(as, "name");
    if(lopt == ((void*)0))
 return ((void*)0);

    type = find(as, "type");
    if(strcmp(type->u.value, "-flag") == 0)
 asprintf(&s, "%s_flag", lopt->u.value);
    else
 asprintf(&s, "%s_%s", lopt->u.value, type->u.value);
    gen_name(s);
    return s;
}
