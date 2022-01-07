
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sexport {char const* name; struct sexport* next; } ;


 struct sexport* emalloc (int) ;
 struct sexport* exports ;

void
add_export (const char *name)
{
    struct sexport *tmp = emalloc (sizeof(*tmp));

    tmp->name = name;
    tmp->next = exports;
    exports = tmp;
}
