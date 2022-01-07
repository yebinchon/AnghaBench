
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int gen_name; } ;
typedef TYPE_1__ Symbol ;


 scalar_t__ asprintf (char**,char*,int ) ;
 int errx (int,char*) ;
 int fix_labels2 (int ,char*) ;
 int free (char*) ;

__attribute__((used)) static void
fix_labels(Symbol *s)
{
    char *p = ((void*)0);
    if (asprintf(&p, "choice_%s", s->gen_name) < 0 || p == ((void*)0))
 errx(1, "malloc");
    fix_labels2(s->type, p);
    free(p);
}
