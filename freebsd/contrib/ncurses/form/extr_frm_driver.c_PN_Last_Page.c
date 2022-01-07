
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxpage; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD ;


 int T (int ) ;
 int T_CALLED (char*) ;
 int _nc_Set_Form_Page (TYPE_1__*,scalar_t__,int *) ;
 int returnCode (int ) ;

__attribute__((used)) static int
PN_Last_Page(FORM *form)
{
  T((T_CALLED("PN_Last_Page(%p)"), (void *)form));
  returnCode(_nc_Set_Form_Page(form, form->maxpage - 1, (FIELD *)0));
}
