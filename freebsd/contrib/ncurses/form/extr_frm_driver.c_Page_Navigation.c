
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;


 int Call_Hook (int *,int ) ;
 int E_INVALID_FIELD ;
 int _nc_Internal_Validation (int *) ;
 int fieldinit ;
 int fieldterm ;
 int forminit ;
 int formterm ;

__attribute__((used)) static int
Page_Navigation(int (*const fct) (FORM *), FORM *form)
{
  int res;

  if (!_nc_Internal_Validation(form))
    res = E_INVALID_FIELD;
  else
    {
      Call_Hook(form, fieldterm);
      Call_Hook(form, formterm);
      res = fct(form);
      Call_Hook(form, forminit);
      Call_Hook(form, fieldinit);
    }
  return res;
}
