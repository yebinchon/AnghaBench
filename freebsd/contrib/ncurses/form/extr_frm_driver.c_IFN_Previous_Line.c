
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ currow; scalar_t__ curcol; } ;
typedef TYPE_1__ FORM ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Previous_Line(FORM *form)
{
  T((T_CALLED("IFN_Previous_Line(%p)"), (void *)form));
  if ((--(form->currow)) < 0)
    {
      form->currow++;
      returnCode(E_REQUEST_DENIED);
    }
  form->curcol = 0;
  returnCode(E_OK);
}
