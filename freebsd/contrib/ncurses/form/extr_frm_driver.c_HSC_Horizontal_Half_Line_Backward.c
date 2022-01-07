
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* current; } ;
struct TYPE_5__ {int cols; } ;
typedef TYPE_2__ FORM ;


 int HSC_Generic (TYPE_2__*,int) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
HSC_Horizontal_Half_Line_Backward(FORM *form)
{
  T((T_CALLED("HSC_Horizontal_Half_Line_Backward(%p)"), (void *)form));
  returnCode(HSC_Generic(form, -((form->current->cols + 1) / 2)));
}
