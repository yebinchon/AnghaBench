
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;
typedef int FIELD ;


 int T (int ) ;
 int T_CALLED (char*) ;
 int _nc_Set_Form_Page (int *,int ,int *) ;
 int returnCode (int ) ;

__attribute__((used)) static int
PN_First_Page(FORM *form)
{
  T((T_CALLED("PN_First_Page(%p)"), (void *)form));
  returnCode(_nc_Set_Form_Page(form, 0, (FIELD *)0));
}
