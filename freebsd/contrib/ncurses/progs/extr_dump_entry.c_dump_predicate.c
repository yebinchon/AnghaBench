
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* Booleans; int* Numbers; int * Strings; } ;
typedef int PredType ;
typedef size_t PredIdx ;


 int ABSENT_NUMERIC ;
 int ABSENT_STRING ;

 int FAIL ;
 int FALSE ;


 scalar_t__ TRUE ;
 TYPE_1__* cur_type ;

__attribute__((used)) static int
dump_predicate(PredType type, PredIdx idx)

{
    switch (type) {
    case 130:
 return (cur_type->Booleans[idx] == FALSE)
     ? FAIL : cur_type->Booleans[idx];

    case 129:
 return (cur_type->Numbers[idx] == ABSENT_NUMERIC)
     ? FAIL : cur_type->Numbers[idx];

    case 128:
 return (cur_type->Strings[idx] != ABSENT_STRING)
     ? (int) TRUE : FAIL;
    }

    return (FALSE);
}
