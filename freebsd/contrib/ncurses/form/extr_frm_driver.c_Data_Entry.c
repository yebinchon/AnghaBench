
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int chtype ;
struct TYPE_14__ {int drows; int dcols; scalar_t__ opts; } ;
struct TYPE_13__ {int status; int currow; int curcol; int w; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 int E_SYSTEM_ERROR ;
 int FN_Next_Field ;
 int Field_Grown (TYPE_2__*,int) ;
 scalar_t__ First_Position_In_Current_Field (TYPE_1__*) ;
 scalar_t__ Growable (TYPE_2__*) ;
 int IFN_Next_Character (TYPE_1__*) ;
 int Inter_Field_Navigation (int ,TYPE_1__*) ;
 int Is_There_Room_For_A_Char_In_Line (TYPE_1__*) ;
 unsigned int O_ACTIVE ;
 unsigned int O_AUTOSKIP ;
 unsigned int O_BLANK ;
 unsigned int O_EDIT ;
 int RETURN (int) ;
 int SetStatus (TYPE_1__*,int) ;
 scalar_t__ Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 scalar_t__ WINDOW_EXT (int ,int ) ;
 int Wrapping_Not_Necessary_Or_Wrapping_Ok (TYPE_1__*) ;
 int _FCHECK_REQUIRED ;
 int _OVLMODE ;
 int _WINDOW_MODIFIED ;
 int _tracechtype (int ) ;
 int addch_used ;
 int waddch (int ,int ) ;
 int werase (int ) ;
 int winsch (int ,int ) ;

__attribute__((used)) static int
Data_Entry(FORM *form, int c)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;

  T((T_CALLED("Data_Entry(%p,%s)"), (void *)form, _tracechtype((chtype)c)));
  if (((unsigned)field->opts & O_EDIT)



    )
    {
      if (((unsigned)field->opts & O_BLANK) &&
   First_Position_In_Current_Field(form) &&
   !(form->status & _FCHECK_REQUIRED) &&
   !(form->status & _WINDOW_MODIFIED))
 werase(form->w);

      if (form->status & _OVLMODE)
 {
   waddch(form->w, (chtype)c);
 }
      else

 {
   bool There_Is_Room = Is_There_Room_For_A_Char_In_Line(form);

   if (!(There_Is_Room ||
  ((Single_Line_Field(field) && Growable(field)))))
     RETURN(E_REQUEST_DENIED);

   if (!There_Is_Room && !Field_Grown(field, 1))
     RETURN(E_SYSTEM_ERROR);

   winsch(form->w, (chtype)c);
 }

      if ((result = Wrapping_Not_Necessary_Or_Wrapping_Ok(form)) == E_OK)
 {
   bool End_Of_Field = (((field->drows - 1) == form->currow) &&
          ((field->dcols - 1) == form->curcol));

   SetStatus(form, _WINDOW_MODIFIED);
   if (End_Of_Field && !Growable(field) && ((unsigned)field->opts & O_AUTOSKIP))
     result = Inter_Field_Navigation(FN_Next_Field, form);
   else
     {
       if (End_Of_Field && Growable(field) && !Field_Grown(field, 1))
  result = E_SYSTEM_ERROR;
       else
  {
    IFN_Next_Character(form);

    result = E_OK;
  }
     }
 }
    }
  RETURN(result);
}
