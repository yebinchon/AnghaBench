
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int curcol; int currow; } ;
typedef TYPE_1__ FORM ;


 int E_OK ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;

__attribute__((used)) static int
FE_Clear_To_End_Of_Line(FORM *form)
{
  T((T_CALLED("FE_Clear_To_End_Of_Line(%p)"), (void *)form));
  wmove(form->w, form->currow, form->curcol);
  wclrtoeol(form->w);
  returnCode(E_OK);
}
