
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * buf; } ;
struct TYPE_7__ {TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int Adjust_Cursor_Position (TYPE_1__*,int *) ;
 int * After_End_Of_Data (int *,int) ;
 int Buffer_Length (TYPE_2__*) ;
 int E_OK ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_End_Of_Field(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *pos;

  T((T_CALLED("IFN_End_Of_Field(%p)"), (void *)form));
  Synchronize_Buffer(form);
  pos = After_End_Of_Data(field->buf, Buffer_Length(field));
  if (pos == (field->buf + Buffer_Length(field)))
    pos--;
  Adjust_Cursor_Position(form, pos);
  returnCode(E_OK);
}
