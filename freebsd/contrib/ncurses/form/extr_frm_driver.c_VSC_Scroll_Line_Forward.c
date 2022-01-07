
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FORM ;


 int T (int ) ;
 int T_CALLED (char*) ;
 int VSC_Generic (int *,int) ;
 int returnCode (int ) ;

__attribute__((used)) static int
VSC_Scroll_Line_Forward(FORM *form)
{
  T((T_CALLED("VSC_Scroll_Line_Forward(%p)"), (void *)form));
  returnCode(VSC_Generic(form, 1));
}
