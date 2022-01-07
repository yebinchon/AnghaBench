
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;


 int E_INVALID_FIELD ;
 int E_OK ;
 int T (int ) ;
 int T_CALLED (char*) ;
 scalar_t__ _nc_Internal_Validation (int *) ;
 int returnCode (int ) ;

__attribute__((used)) static int
FV_Validation(FORM *form)
{
  T((T_CALLED("FV_Validation(%p)"), (void *)form));
  if (_nc_Internal_Validation(form))
    returnCode(E_OK);
  else
    returnCode(E_INVALID_FIELD);
}
