
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objid {char const* label; int value; int * next; } ;


 struct objid* emalloc (int) ;

__attribute__((used)) static struct objid *
new_objid(const char *label, int value)
{
    struct objid *s;
    s = emalloc(sizeof(*s));
    s->label = label;
    s->value = value;
    s->next = ((void*)0);
    return s;
}
