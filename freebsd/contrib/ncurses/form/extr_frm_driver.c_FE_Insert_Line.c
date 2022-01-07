
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TypeArgument ;
struct TYPE_11__ {int drows; scalar_t__ arg; int type; } ;
struct TYPE_10__ {int currow; int w; scalar_t__ curcol; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 scalar_t__ C_BLANK ;
 scalar_t__ Check_Char (TYPE_1__*,TYPE_2__*,int ,int,int *) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 int E_SYSTEM_ERROR ;
 int Field_Grown (TYPE_2__*,int) ;
 scalar_t__ Growable (TYPE_2__*) ;
 scalar_t__ Is_There_Room_For_A_Line (TYPE_1__*) ;
 int Single_Line_Field (TYPE_2__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int) ;
 int winsertln (int ) ;

__attribute__((used)) static int
FE_Insert_Line(FORM *form)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;

  T((T_CALLED("FE_Insert_Line(%p)"), (void *)form));
  if (Check_Char(form, field,
   field->type, (int)C_BLANK, (TypeArgument *)(field->arg)))
    {
      bool Maybe_Done = (form->currow != (field->drows - 1)) &&
      Is_There_Room_For_A_Line(form);

      if (!Single_Line_Field(field) &&
   (Maybe_Done || Growable(field)))
 {
   if (!Maybe_Done && !Field_Grown(field, 1))
     result = E_SYSTEM_ERROR;
   else
     {
       form->curcol = 0;
       winsertln(form->w);
       result = E_OK;
     }
 }
    }
  returnCode(result);
}
