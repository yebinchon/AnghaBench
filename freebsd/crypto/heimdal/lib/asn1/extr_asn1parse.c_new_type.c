
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Typetype ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ Type ;


 TYPE_1__* ecalloc (int,int) ;

__attribute__((used)) static Type *
new_type (Typetype tt)
{
    Type *t = ecalloc(1, sizeof(*t));
    t->type = tt;
    return t;
}
