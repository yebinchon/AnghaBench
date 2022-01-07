
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ opts; TYPE_1__* form; } ;
struct TYPE_11__ {int w; scalar_t__ begincol; scalar_t__ toprow; scalar_t__ curcol; scalar_t__ currow; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int Buffer_To_Window (TYPE_2__*,int ) ;
 int Display_Field (TYPE_2__*) ;
 int E_BAD_ARGUMENT ;
 int E_OK ;
 scalar_t__ Field_Really_Appears (TYPE_2__*) ;
 scalar_t__ Justification_Allowed (TYPE_2__*) ;
 unsigned int O_PUBLIC ;
 int SetStatus (TYPE_2__*,int ) ;
 int Undo_Justification (TYPE_2__*,int ) ;
 int _CHANGED ;
 int _NEWTOP ;
 int _nc_Refresh_Current_Field (TYPE_1__*) ;
 int werase (int ) ;

__attribute__((used)) static int
Synchronize_Field(FIELD *field)
{
  FORM *form;
  int res = E_OK;

  if (!field)
    return (E_BAD_ARGUMENT);

  if (((form = field->form) != (FORM *)0)
      && Field_Really_Appears(field))
    {
      if (field == form->current)
 {
   form->currow = form->curcol = form->toprow = form->begincol = 0;
   werase(form->w);

   if (((unsigned)field->opts & O_PUBLIC) && Justification_Allowed(field))
     Undo_Justification(field, form->w);
   else
     Buffer_To_Window(field, form->w);

   SetStatus(field, _NEWTOP);
   res = _nc_Refresh_Current_Field(form);
 }
      else
 res = Display_Field(field);
    }
  SetStatus(field, _CHANGED);
  return (res);
}
