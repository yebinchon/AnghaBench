
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;


 int E_OK ;
 int SetStatus (int *,int ) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int _OVLMODE ;
 int returnCode (int ) ;

__attribute__((used)) static int
EM_Overlay_Mode(FORM *form)
{
  T((T_CALLED("EM_Overlay_Mode(%p)"), (void *)form));
  SetStatus(form, _OVLMODE);
  returnCode(E_OK);
}
