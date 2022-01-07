
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; scalar_t__ curcol; } ;
typedef TYPE_1__ FORM ;


 int E_OK ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;
 int wdeleteln (int ) ;

__attribute__((used)) static int
FE_Delete_Line(FORM *form)
{
  T((T_CALLED("FE_Delete_Line(%p)"), (void *)form));
  form->curcol = 0;
  wdeleteln(form->w);
  returnCode(E_OK);
}
