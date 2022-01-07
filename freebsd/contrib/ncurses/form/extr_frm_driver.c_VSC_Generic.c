
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int drows; int rows; } ;
struct TYPE_4__ {int toprow; int currow; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int E_OK ;
 int E_REQUEST_DENIED ;

__attribute__((used)) static int
VSC_Generic(FORM *form, int nlines)
{
  FIELD *field = form->current;
  int res = E_REQUEST_DENIED;
  int rows_to_go = (nlines > 0 ? nlines : -nlines);

  if (nlines > 0)
    {
      if ((rows_to_go + form->toprow) > (field->drows - field->rows))
 rows_to_go = (field->drows - field->rows - form->toprow);

      if (rows_to_go > 0)
 {
   form->currow += rows_to_go;
   form->toprow += rows_to_go;
   res = E_OK;
 }
    }
  else
    {
      if (rows_to_go > form->toprow)
 rows_to_go = form->toprow;

      if (rows_to_go > 0)
 {
   form->currow -= rows_to_go;
   form->toprow -= rows_to_go;
   res = E_OK;
 }
    }
  return (res);
}
