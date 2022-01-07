
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* last; struct TYPE_5__* next; int request; } ;
typedef TYPE_1__ TABLE_ENTRY ;


 TYPE_1__* NIL ;
 scalar_t__ debug ;
 int free (char*) ;
 int print_request (char*,int *) ;
 TYPE_1__* table ;

__attribute__((used)) static void
delete(TABLE_ENTRY *ptr)
{

 if (debug)
  print_request("delete", &ptr->request);
 if (table == ptr)
  table = ptr->next;
 else if (ptr->last != NIL)
  ptr->last->next = ptr->next;
 if (ptr->next != NIL)
  ptr->next->last = ptr->last;
 free((char *)ptr);
}
