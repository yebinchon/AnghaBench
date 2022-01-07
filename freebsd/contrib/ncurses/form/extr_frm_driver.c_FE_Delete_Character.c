
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;


 int DeleteChar (int *) ;
 int E_OK ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
FE_Delete_Character(FORM *form)
{
  T((T_CALLED("FE_Delete_Character(%p)"), (void *)form));
  DeleteChar(form);
  returnCode(E_OK);
}
