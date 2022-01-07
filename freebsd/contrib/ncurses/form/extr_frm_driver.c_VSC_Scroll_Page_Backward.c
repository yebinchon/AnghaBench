
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* current; } ;
struct TYPE_5__ {int rows; } ;
typedef TYPE_2__ FORM ;


 int T (int ) ;
 int T_CALLED (char*) ;
 int VSC_Generic (TYPE_2__*,int ) ;
 int returnCode (int ) ;

__attribute__((used)) static int
VSC_Scroll_Page_Backward(FORM *form)
{
  T((T_CALLED("VSC_Scroll_Page_Backward(%p)"), (void *)form));
  returnCode(VSC_Generic(form, -(form->current->rows)));
}
