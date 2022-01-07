
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dcols; } ;
struct TYPE_6__ {int curcol; TYPE_2__* current; int currow; int w; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 scalar_t__ Field_Grown (TYPE_2__*,int) ;
 scalar_t__ Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int myWCWIDTH (int ,int ,int) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Right_Character(FORM *form)
{
  int amount = myWCWIDTH(form->w, form->currow, form->curcol);
  int oldcol = form->curcol;

  T((T_CALLED("IFN_Right_Character(%p)"), (void *)form));
  if ((form->curcol += amount) >= form->current->dcols)
    {






      form->curcol = oldcol;
      returnCode(E_REQUEST_DENIED);
    }
  returnCode(E_OK);
}
