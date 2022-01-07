
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int drows; scalar_t__ dcols; } ;
struct TYPE_11__ {int currow; int status; int w; scalar_t__ curcol; scalar_t__ opts; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int * Address_Of_Current_Position_In_Buffer (TYPE_1__*) ;
 int * After_End_Of_Data (int *,scalar_t__) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 int E_SYSTEM_ERROR ;
 int FN_Next_Field ;
 int Field_Grown (TYPE_2__*,int) ;
 scalar_t__ Growable (TYPE_2__*) ;
 int Inter_Field_Navigation (int ,TYPE_1__*) ;
 scalar_t__ Is_There_Room_For_A_Line (TYPE_1__*) ;
 unsigned int O_NL_OVERLOAD ;
 int SetStatus (TYPE_1__*,int ) ;
 int Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int _OVLMODE ;
 int _WINDOW_MODIFIED ;
 int myADDNSTR (int ,int *,int) ;
 int returnCode (int ) ;
 int wclrtoeol (int ) ;
 int winsertln (int ) ;
 int wmove (int ,int,scalar_t__) ;

__attribute__((used)) static int
FE_New_Line(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp, *t;
  bool Last_Row = ((field->drows - 1) == form->currow);

  T((T_CALLED("FE_New_Line(%p)"), (void *)form));
  if (form->status & _OVLMODE)
    {
      if (Last_Row &&
   (!(Growable(field) && !Single_Line_Field(field))))
 {
   if (!((unsigned)form->opts & O_NL_OVERLOAD))
     returnCode(E_REQUEST_DENIED);
   wmove(form->w, form->currow, form->curcol);
   wclrtoeol(form->w);




   SetStatus(form, _WINDOW_MODIFIED);
   returnCode(Inter_Field_Navigation(FN_Next_Field, form));
 }
      else
 {
   if (Last_Row && !Field_Grown(field, 1))
     {



       returnCode(E_SYSTEM_ERROR);
     }
   wmove(form->w, form->currow, form->curcol);
   wclrtoeol(form->w);
   form->currow++;
   form->curcol = 0;
   SetStatus(form, _WINDOW_MODIFIED);
   returnCode(E_OK);
 }
    }
  else
    {

      if (Last_Row &&
   !(Growable(field) && !Single_Line_Field(field)))
 {
   if (!((unsigned)form->opts & O_NL_OVERLOAD))
     returnCode(E_REQUEST_DENIED);
   returnCode(Inter_Field_Navigation(FN_Next_Field, form));
 }
      else
 {
   bool May_Do_It = !Last_Row && Is_There_Room_For_A_Line(form);

   if (!(May_Do_It || Growable(field)))
     returnCode(E_REQUEST_DENIED);
   if (!May_Do_It && !Field_Grown(field, 1))
     returnCode(E_SYSTEM_ERROR);

   bp = Address_Of_Current_Position_In_Buffer(form);
   t = After_End_Of_Data(bp, field->dcols - form->curcol);
   wmove(form->w, form->currow, form->curcol);
   wclrtoeol(form->w);
   form->currow++;
   form->curcol = 0;
   wmove(form->w, form->currow, form->curcol);
   winsertln(form->w);
   myADDNSTR(form->w, bp, (int)(t - bp));
   SetStatus(form, _WINDOW_MODIFIED);
   returnCode(E_OK);
 }
    }
}
