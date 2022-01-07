
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cols; int dcols; } ;
struct TYPE_9__ {scalar_t__ curcol; int currow; int status; int w; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int * Address_Of_Row_In_Buffer (TYPE_2__*,int) ;
 int Adjust_Cursor_Position (TYPE_1__*,int *) ;
 int * After_End_Of_Data (int *,int ) ;
 int DeleteChar (TYPE_1__*) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 scalar_t__ First_Position_In_Current_Field (TYPE_1__*) ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int _OVLMODE ;
 int myADDNSTR (int ,int *,int) ;
 int returnCode (int ) ;
 int wdeleteln (int ) ;
 int wmove (int ,int,scalar_t__) ;

__attribute__((used)) static int
FE_Delete_Previous(FORM *form)
{
  FIELD *field = form->current;

  T((T_CALLED("FE_Delete_Previous(%p)"), (void *)form));
  if (First_Position_In_Current_Field(form))
    returnCode(E_REQUEST_DENIED);

  if ((--(form->curcol)) < 0)
    {
      FIELD_CELL *this_line, *prev_line, *prev_end, *this_end;
      int this_row = form->currow;

      form->curcol++;
      if (form->status & _OVLMODE)
 returnCode(E_REQUEST_DENIED);

      prev_line = Address_Of_Row_In_Buffer(field, (form->currow - 1));
      this_line = Address_Of_Row_In_Buffer(field, (form->currow));
      Synchronize_Buffer(form);
      prev_end = After_End_Of_Data(prev_line, field->dcols);
      this_end = After_End_Of_Data(this_line, field->dcols);
      if ((int)(this_end - this_line) >
   (field->cols - (int)(prev_end - prev_line)))
 returnCode(E_REQUEST_DENIED);
      wmove(form->w, form->currow, form->curcol);
      wdeleteln(form->w);
      Adjust_Cursor_Position(form, prev_end);
      if (form->currow == this_row && this_row > 0)
 {
   form->currow -= 1;
   form->curcol = field->dcols - 1;
   DeleteChar(form);
 }
      else
 {
   wmove(form->w, form->currow, form->curcol);
   myADDNSTR(form->w, this_line, (int)(this_end - this_line));
 }
    }
  else
    {
      DeleteChar(form);
    }
  returnCode(E_OK);
}
