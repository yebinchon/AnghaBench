
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; scalar_t__ curcol; scalar_t__ currow; } ;
typedef TYPE_1__ FORM ;


 int E_OK ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;
 int werase (int ) ;

__attribute__((used)) static int
FE_Clear_Field(FORM *form)
{
  T((T_CALLED("FE_Clear_Field(%p)"), (void *)form));
  form->currow = form->curcol = 0;
  werase(form->w);
  returnCode(E_OK);
}
