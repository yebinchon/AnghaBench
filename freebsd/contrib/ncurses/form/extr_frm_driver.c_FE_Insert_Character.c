
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int chtype ;
typedef int TypeArgument ;
struct TYPE_12__ {scalar_t__ arg; int type; } ;
struct TYPE_11__ {int w; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 scalar_t__ C_BLANK ;
 scalar_t__ Check_Char (TYPE_1__*,TYPE_2__*,int ,int,int *) ;
 int E_REQUEST_DENIED ;
 int E_SYSTEM_ERROR ;
 int Field_Grown (TYPE_2__*,int) ;
 scalar_t__ Growable (TYPE_2__*) ;
 int Is_There_Room_For_A_Char_In_Line (TYPE_1__*) ;
 scalar_t__ Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int Wrapping_Not_Necessary_Or_Wrapping_Ok (TYPE_1__*) ;
 int returnCode (int) ;
 int winsch (int ,int ) ;

__attribute__((used)) static int
FE_Insert_Character(FORM *form)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;

  T((T_CALLED("FE_Insert_Character(%p)"), (void *)form));
  if (Check_Char(form, field, field->type, (int)C_BLANK,
   (TypeArgument *)(field->arg)))
    {
      bool There_Is_Room = Is_There_Room_For_A_Char_In_Line(form);

      if (There_Is_Room ||
   ((Single_Line_Field(field) && Growable(field))))
 {
   if (!There_Is_Room && !Field_Grown(field, 1))
     result = E_SYSTEM_ERROR;
   else
     {
       winsch(form->w, (chtype)C_BLANK);
       result = Wrapping_Not_Necessary_Or_Wrapping_Ok(form);
     }
 }
    }
  returnCode(result);
}
