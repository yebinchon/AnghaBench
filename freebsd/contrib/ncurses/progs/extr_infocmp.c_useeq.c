
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int nuses; TYPE_1__* uses; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ ENTRY ;


 int FALSE ;
 int TRUE ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool
useeq(ENTRY * e1, ENTRY * e2)

{
    unsigned i, j;

    if (e1->nuses != e2->nuses)
 return (FALSE);


    for (i = 0; i < e1->nuses; i++) {
 bool foundmatch = FALSE;


 for (j = 0; j < e2->nuses; j++)
     if (!strcmp(e1->uses[i].name, e2->uses[j].name)) {
  foundmatch = TRUE;
  break;
     }

 if (!foundmatch)
     return (FALSE);
    }

    return (TRUE);
}
