
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current; } ;
typedef TYPE_1__ FORM ;


 int E_REQUEST_DENIED ;
 scalar_t__ Single_Line_Field (int ) ;

__attribute__((used)) static int
Horizontal_Scrolling(int (*const fct) (FORM *), FORM *form)
{
  if (Single_Line_Field(form->current))
    return fct(form);
  else
    return (E_REQUEST_DENIED);
}
