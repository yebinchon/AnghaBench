
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* link; } ;
typedef TYPE_1__ FIELD ;


 int E_BAD_ARGUMENT ;
 int E_OK ;
 int E_SYSTEM_ERROR ;
 int Synchronize_Field (TYPE_1__*) ;

__attribute__((used)) static int
Synchronize_Linked_Fields(FIELD *field)
{
  FIELD *linked_field;
  int res = E_OK;
  int syncres;

  if (!field)
    return (E_BAD_ARGUMENT);

  if (!field->link)
    return (E_SYSTEM_ERROR);

  for (linked_field = field->link;
       (linked_field != field) && (linked_field != 0);
       linked_field = linked_field->link)
    {
      if (((syncres = Synchronize_Field(linked_field)) != E_OK) &&
   (res == E_OK))
 res = syncres;
    }
  return (res);
}
