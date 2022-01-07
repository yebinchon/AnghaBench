
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;


 int HSC_Generic (int *,int) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
HSC_Scroll_Char_Forward(FORM *form)
{
  T((T_CALLED("HSC_Scroll_Char_Forward(%p)"), (void *)form));
  returnCode(HSC_Generic(form, 1));
}
