
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inferior_list {TYPE_1__* head; TYPE_1__* tail; } ;
struct TYPE_2__ {int id; } ;


 int error (char*) ;

void
change_inferior_id (struct inferior_list *list,
      int new_id)
{
  if (list->head != list->tail)
    error ("tried to change thread ID after multiple threads are created");

  list->head->id = new_id;
}
