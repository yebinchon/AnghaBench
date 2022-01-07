
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int members; struct TYPE_3__* subtype; } ;
typedef TYPE_1__ Type ;


 int fix_labels1 (int ,char const*) ;

__attribute__((used)) static void fix_labels2(Type *t, const char *prefix)
{
    for(; t; t = t->subtype)
 fix_labels1(t->members, prefix);
}
