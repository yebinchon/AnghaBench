
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dcols; } ;
struct TYPE_7__ {TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int Address_Of_Current_Row_In_Buffer (TYPE_1__*) ;
 int Adjust_Cursor_Position (TYPE_1__*,int ) ;
 int E_OK ;
 int Get_Start_Of_Data (int ,int ) ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Beginning_Of_Line(FORM *form)
{
  FIELD *field = form->current;

  T((T_CALLED("IFN_Beginning_Of_Line(%p)"), (void *)form));
  Synchronize_Buffer(form);
  Adjust_Cursor_Position(form,
    Get_Start_Of_Data(Address_Of_Current_Row_In_Buffer(form),
        field->dcols));
  returnCode(E_OK);
}
