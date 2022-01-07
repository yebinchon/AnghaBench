
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


 int * Address_Of_Current_Position_In_Buffer (TYPE_1__*) ;
 int Adjust_Cursor_Position (TYPE_1__*,int *) ;
 int * After_End_Of_Data (int *,int) ;
 int * After_Last_Whitespace_Character (int *,int) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 int FALSE ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int TRUE ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Previous_Word(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp = Address_Of_Current_Position_In_Buffer(form);
  FIELD_CELL *s;
  FIELD_CELL *t;
  bool again = FALSE;

  T((T_CALLED("IFN_Previous_Word(%p)"), (void *)form));


  Synchronize_Buffer(form);

  s = After_End_Of_Data(field->buf, (int)(bp - field->buf));




  if (s == bp)
    again = TRUE;





  t = After_Last_Whitespace_Character(field->buf, (int)(s - field->buf));

  if (s == t)
    returnCode(E_REQUEST_DENIED);

  if (again)
    {

      s = After_End_Of_Data(field->buf, (int)(t - field->buf));
      t = After_Last_Whitespace_Character(field->buf, (int)(s - field->buf));

      if (s == t)
 returnCode(E_REQUEST_DENIED);

    }
  Adjust_Cursor_Position(form, t);
  returnCode(E_OK);
}
