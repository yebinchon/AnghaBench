
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int drows; int dcols; scalar_t__ opts; } ;
struct TYPE_13__ {int currow; int curcol; int w; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int * Address_Of_Current_Row_In_Buffer (TYPE_1__*) ;
 int * After_Last_Whitespace_Character (int *,int) ;
 int DeleteChar (TYPE_1__*) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 int E_SYSTEM_ERROR ;
 int Field_Grown (TYPE_2__*,int) ;
 scalar_t__ Growable (TYPE_2__*) ;
 int Insert_String (TYPE_1__*,int,int *,int) ;
 unsigned int O_WRAP ;
 int Single_Line_Field (TYPE_2__*) ;
 scalar_t__ There_Is_No_Room_For_A_Char_In_Line (TYPE_1__*) ;
 int Window_To_Buffer (TYPE_1__*,TYPE_2__*) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int,int) ;

__attribute__((used)) static int
Wrapping_Not_Necessary_Or_Wrapping_Ok(FORM *form)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;
  bool Last_Row = ((field->drows - 1) == form->currow);

  if (((unsigned)field->opts & O_WRAP) &&
      (!Single_Line_Field(field)) &&
      (There_Is_No_Room_For_A_Char_In_Line(form)) &&
      (!Last_Row || Growable(field)))
    {
      FIELD_CELL *bp;
      FIELD_CELL *split;
      int chars_to_be_wrapped;
      int chars_to_remain_on_line;

      if (Last_Row)
 {


   if (!Field_Grown(field, 1))
     return E_SYSTEM_ERROR;
 }
      bp = Address_Of_Current_Row_In_Buffer(form);
      Window_To_Buffer(form, field);
      split = After_Last_Whitespace_Character(bp, field->dcols);


      chars_to_remain_on_line = (int)(split - bp);
      chars_to_be_wrapped = field->dcols - chars_to_remain_on_line;
      if (chars_to_remain_on_line > 0)
 {
   if ((result = Insert_String(form, form->currow + 1, split,
          chars_to_be_wrapped)) == E_OK)
     {
       wmove(form->w, form->currow, chars_to_remain_on_line);
       wclrtoeol(form->w);
       if (form->curcol >= chars_to_remain_on_line)
  {
    form->currow++;
    form->curcol -= chars_to_remain_on_line;
  }
       return E_OK;
     }
 }
      else
 return E_OK;
      if (result != E_OK)
 {
   DeleteChar(form);
   Window_To_Buffer(form, field);
   result = E_REQUEST_DENIED;
 }
    }
  else
    result = E_OK;
  return (result);
}
