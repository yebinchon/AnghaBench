
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ frow; scalar_t__ fcol; struct TYPE_6__* snext; struct TYPE_6__* sprev; } ;
typedef TYPE_1__ FIELD ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static FIELD *
Insert_Field_By_Position(FIELD *newfield, FIELD *head)
{
  FIELD *current, *newhead;

  assert(newfield);

  if (!head)
    {
      newhead = newfield->snext = newfield->sprev = newfield;
    }
  else
    {
      newhead = current = head;
      while ((current->frow < newfield->frow) ||
      ((current->frow == newfield->frow) &&
       (current->fcol < newfield->fcol)))
 {
   current = current->snext;
   if (current == head)
     {
       head = (FIELD *)0;
       break;
     }
 }

      newfield->snext = current;
      newfield->sprev = current->sprev;
      newfield->snext->sprev = newfield;
      newfield->sprev->snext = newfield;
      if (current == head)
 newhead = newfield;
    }
  return (newhead);
}
