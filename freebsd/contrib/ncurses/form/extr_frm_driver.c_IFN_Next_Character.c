
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dcols; scalar_t__ drows; } ;
struct TYPE_6__ {scalar_t__ currow; scalar_t__ curcol; int w; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 scalar_t__ Field_Grown (TYPE_2__*,int) ;
 scalar_t__ Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int myWCWIDTH (int ,scalar_t__,scalar_t__) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Next_Character(FORM *form)
{
  FIELD *field = form->current;
  int step = myWCWIDTH(form->w, form->currow, form->curcol);

  T((T_CALLED("IFN_Next_Character(%p)"), (void *)form));
  if ((form->curcol += step) == field->dcols)
    {
      if ((++(form->currow)) == field->drows)
 {







   form->currow--;




   form->curcol -= step;
   returnCode(E_REQUEST_DENIED);
 }
      form->curcol = 0;
    }
  returnCode(E_OK);
}
