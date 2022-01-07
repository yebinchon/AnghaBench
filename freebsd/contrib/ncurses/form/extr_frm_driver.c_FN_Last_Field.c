
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t curpage; TYPE_1__* page; int * field; } ;
struct TYPE_5__ {size_t pmin; } ;
typedef TYPE_2__ FORM ;


 int Previous_Field_On_Page (int ) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int _nc_Set_Current_Field (TYPE_2__*,int ) ;
 int returnCode (int ) ;

__attribute__((used)) static int
FN_Last_Field(FORM *form)
{
  T((T_CALLED("FN_Last_Field(%p)"), (void *)form));
  returnCode(
       _nc_Set_Current_Field(form,
        Previous_Field_On_Page(form->field[form->page[form->curpage].pmin])));
}
