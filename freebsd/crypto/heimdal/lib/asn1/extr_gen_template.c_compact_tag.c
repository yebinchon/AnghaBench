
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* subtype; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TTag ;

__attribute__((used)) static const Type *
compact_tag(const Type *t)
{
    while (t->type == TTag)
 t = t->subtype;
    return t;
}
