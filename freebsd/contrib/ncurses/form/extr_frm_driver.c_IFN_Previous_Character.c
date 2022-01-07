
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ currow; int curcol; TYPE_1__* current; int w; } ;
struct TYPE_4__ {int dcols; } ;
typedef TYPE_2__ FORM ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int myWCWIDTH (int ,scalar_t__,int) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Previous_Character(FORM *form)
{
  int amount = myWCWIDTH(form->w, form->currow, form->curcol - 1);
  int oldcol = form->curcol;

  T((T_CALLED("IFN_Previous_Character(%p)"), (void *)form));
  if ((form->curcol -= amount) < 0)
    {
      if ((--(form->currow)) < 0)
 {
   form->currow++;
   form->curcol = oldcol;
   returnCode(E_REQUEST_DENIED);
 }
      form->curcol = form->current->dcols - 1;
    }
  returnCode(E_OK);
}
