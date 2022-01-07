
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * buf; } ;
struct TYPE_8__ {TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int * Address_Of_Current_Position_In_Buffer (TYPE_1__*) ;
 int Adjust_Cursor_Position (TYPE_1__*,int *) ;
 scalar_t__ Buffer_Length (TYPE_2__*) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 int * Get_First_Whitespace_Character (int *,scalar_t__) ;
 int * Get_Start_Of_Data (int *,scalar_t__) ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
IFN_Next_Word(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp = Address_Of_Current_Position_In_Buffer(form);
  FIELD_CELL *s;
  FIELD_CELL *t;

  T((T_CALLED("IFN_Next_Word(%p)"), (void *)form));


  Synchronize_Buffer(form);




  s = Get_First_Whitespace_Character(bp, Buffer_Length(field) -
         (int)(bp - field->buf));


  t = Get_Start_Of_Data(s, Buffer_Length(field) -
   (int)(s - field->buf));

  if (s == t)
    returnCode(E_REQUEST_DENIED);
  else

    {
      Adjust_Cursor_Position(form, t);
      returnCode(E_OK);
    }
}
