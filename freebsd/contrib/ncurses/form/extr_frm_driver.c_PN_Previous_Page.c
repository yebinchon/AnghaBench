
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;
typedef int FIELD ;


 int Previous_Page_Number (int *) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int _nc_Set_Form_Page (int *,int ,int *) ;
 int returnCode (int ) ;

__attribute__((used)) static int
PN_Previous_Page(FORM *form)
{
  T((T_CALLED("PN_Previous_Page(%p)"), (void *)form));
  returnCode(_nc_Set_Form_Page(form, Previous_Page_Number(form), (FIELD *)0));
}
