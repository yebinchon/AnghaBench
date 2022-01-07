
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current; } ;
typedef TYPE_1__ FORM ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 int SetStatus (TYPE_1__*,int ) ;
 int Single_Line_Field (int ) ;
 int _NEWTOP ;

__attribute__((used)) static int
Vertical_Scrolling(int (*const fct) (FORM *), FORM *form)
{
  int res = E_REQUEST_DENIED;

  if (!Single_Line_Field(form->current))
    {
      res = fct(form);
      if (res == E_OK)
 SetStatus(form, _NEWTOP);
    }
  return (res);
}
