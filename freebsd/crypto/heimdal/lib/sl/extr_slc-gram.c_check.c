
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int assignment; } ;
struct assignment {char* name; int lineno; scalar_t__ type; TYPE_1__ u; struct assignment* next; } ;


 scalar_t__ a_assignment ;
 scalar_t__ check_command (int ) ;
 int fprintf (int ,char*,char*,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
check(struct assignment *as)
{
    struct assignment *a;
    int ret = 0;
    for(a = as; a != ((void*)0); a = a->next) {
 if(strcmp(a->name, "command")) {
     fprintf(stderr, "unknown type %s line %d\n", a->name, a->lineno);
     ret++;
     continue;
 }
 if(a->type != a_assignment) {
     fprintf(stderr, "bad command definition %s line %d\n", a->name, a->lineno);
     ret++;
     continue;
 }
 ret += check_command(a->u.assignment);
    }
    return ret;
}
