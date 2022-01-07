
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* Booleans; scalar_t__* Numbers; int * Strings; } ;
typedef TYPE_1__ TERMTYPE ;
typedef int PredIdx ;


 int FALSE ;
 unsigned int NUM_BOOLEANS (TYPE_1__*) ;
 unsigned int NUM_NUMBERS (TYPE_1__*) ;
 unsigned int NUM_STRINGS (TYPE_1__*) ;
 int TRUE ;
 scalar_t__ capcmp (int ,int ,int ) ;

__attribute__((used)) static bool
entryeq(TERMTYPE *t1, TERMTYPE *t2)

{
    unsigned i;

    for (i = 0; i < NUM_BOOLEANS(t1); i++)
 if (t1->Booleans[i] != t2->Booleans[i])
     return (FALSE);

    for (i = 0; i < NUM_NUMBERS(t1); i++)
 if (t1->Numbers[i] != t2->Numbers[i])
     return (FALSE);

    for (i = 0; i < NUM_STRINGS(t1); i++)
 if (capcmp((PredIdx) i, t1->Strings[i], t2->Strings[i]))
     return (FALSE);

    return (TRUE);
}
