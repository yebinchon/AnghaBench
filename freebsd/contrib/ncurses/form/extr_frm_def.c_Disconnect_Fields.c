
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _PAGE ;
struct TYPE_5__ {TYPE_1__* form; } ;
struct TYPE_4__ {int maxfield; int maxpage; int * page; TYPE_2__** field; scalar_t__ cols; scalar_t__ rows; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int free (int *) ;

__attribute__((used)) static void
Disconnect_Fields(FORM *form)
{
  if (form->field)
    {
      FIELD **fields;

      for (fields = form->field; *fields; fields++)
 {
   if (form == (*fields)->form)
     (*fields)->form = (FORM *)0;
 }

      form->rows = form->cols = 0;
      form->maxfield = form->maxpage = -1;
      form->field = (FIELD **)0;
      if (form->page)
 free(form->page);
      form->page = (_PAGE *) 0;
    }
}
