
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curcol; int currow; int w; } ;
typedef TYPE_1__ FORM ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int myWCWIDTH (int ,int ,int) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Left_Character(FORM *form)
{
  int amount = myWCWIDTH(form->w, form->currow, form->curcol - 1);
  int oldcol = form->curcol;

  T((T_CALLED("IFN_Left_Character(%p)"), (void *)form));
  if ((form->curcol -= amount) < 0)
    {
      form->curcol = oldcol;
      returnCode(E_REQUEST_DENIED);
    }
  returnCode(E_OK);
}
