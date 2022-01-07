
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tagenv; int tagclass; int tagvalue; } ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* subtype; TYPE_1__ tag; } ;
typedef TYPE_2__ Type ;


 scalar_t__ TE_IMPLICIT ;
 scalar_t__ TTag ;
 TYPE_2__* new_type (scalar_t__) ;

__attribute__((used)) static Type *
new_tag(int tagclass, int tagvalue, int tagenv, Type *oldtype)
{
    Type *t;
    if(oldtype->type == TTag && oldtype->tag.tagenv == TE_IMPLICIT) {
 t = oldtype;
 oldtype = oldtype->subtype;
    } else
 t = new_type (TTag);

    t->tag.tagclass = tagclass;
    t->tag.tagvalue = tagvalue;
    t->tag.tagenv = tagenv;
    t->subtype = oldtype;
    return t;
}
