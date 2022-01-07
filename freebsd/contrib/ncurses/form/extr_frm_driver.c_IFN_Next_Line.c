
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ drows; } ;
struct TYPE_6__ {scalar_t__ currow; scalar_t__ curcol; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 scalar_t__ Field_Grown (TYPE_2__*,int) ;
 int Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Next_Line(FORM *form)
{
  FIELD *field = form->current;

  T((T_CALLED("IFN_Next_Line(%p)"), (void *)form));
  if ((++(form->currow)) == field->drows)
    {




      form->currow--;
      returnCode(E_REQUEST_DENIED);
    }
  form->curcol = 0;
  returnCode(E_OK);
}
