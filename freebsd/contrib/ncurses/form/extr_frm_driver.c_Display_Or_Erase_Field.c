
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_8__ {scalar_t__ opts; int fcol; int frow; int cols; int rows; int form; } ;
typedef TYPE_1__ FIELD ;


 int Buffer_To_Window (TYPE_1__*,int *) ;
 int ClrStatus (TYPE_1__*,int ) ;
 int E_OK ;
 int E_SYSTEM_ERROR ;
 int * Get_Form_Window (int ) ;
 scalar_t__ Justification_Allowed (TYPE_1__*) ;
 unsigned int O_PUBLIC ;
 unsigned int O_VISIBLE ;
 int Perform_Justification (TYPE_1__*,int *) ;
 int Set_Field_Window_Attributes (TYPE_1__*,int *) ;
 scalar_t__ WINDOW_ATTRS (int *) ;
 int _NEWTOP ;
 int delwin (int *) ;
 int * derwin (int *,int ,int ,int ,int ) ;
 int wattrset (int *,int) ;
 int werase (int *) ;
 int wsyncup (int *) ;

__attribute__((used)) static int
Display_Or_Erase_Field(FIELD *field, bool bEraseFlag)
{
  WINDOW *win;
  WINDOW *fwin;

  if (!field)
    return E_SYSTEM_ERROR;

  fwin = Get_Form_Window(field->form);
  win = derwin(fwin,
        field->rows, field->cols, field->frow, field->fcol);

  if (!win)
    return E_SYSTEM_ERROR;
  else
    {
      if ((unsigned)field->opts & O_VISIBLE)
 {
   Set_Field_Window_Attributes(field, win);
 }
      else
 {
   (void)wattrset(win, (int)WINDOW_ATTRS(fwin));
 }
      werase(win);
    }

  if (!bEraseFlag)
    {
      if ((unsigned)field->opts & O_PUBLIC)
 {
   if (Justification_Allowed(field))
     Perform_Justification(field, win);
   else
     Buffer_To_Window(field, win);
 }
      ClrStatus(field, _NEWTOP);
    }
  wsyncup(win);
  delwin(win);
  return E_OK;
}
