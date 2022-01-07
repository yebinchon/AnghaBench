
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int nuses; TYPE_1__* uses; } ;
struct TYPE_4__ {char* name; } ;
typedef int FILE ;
typedef TYPE_2__ ENTRY ;


 int fputs (char*,int *) ;

__attribute__((used)) static void
print_uses(ENTRY * ep, FILE *fp)

{
    unsigned i;

    if (!ep->nuses)
 fputs("NULL", fp);
    else
 for (i = 0; i < ep->nuses; i++) {
     fputs(ep->uses[i].name, fp);
     if (i < ep->nuses - 1)
  fputs(" ", fp);
 }
}
