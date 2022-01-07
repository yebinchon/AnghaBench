
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dcols; } ;
struct TYPE_7__ {int curcol; int w; int currow; TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef int FIELD_CELL ;
typedef TYPE_2__ FIELD ;


 int * Address_Of_Current_Row_In_Buffer (TYPE_1__*) ;
 int Adjust_Cursor_Position (TYPE_1__*,int ) ;
 int * After_End_Of_Data (int *,int) ;
 int After_Last_Whitespace_Character (int *,int) ;
 int E_OK ;
 int E_REQUEST_DENIED ;
 int * Get_First_Whitespace_Character (int *,int) ;
 int * Get_Start_Of_Data (int *,int) ;
 scalar_t__ ISBLANK (int ) ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int myADDNSTR (int ,int *,int) ;
 int returnCode (int ) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int) ;

__attribute__((used)) static int
FE_Delete_Word(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp = Address_Of_Current_Row_In_Buffer(form);
  FIELD_CELL *ep = bp + field->dcols;
  FIELD_CELL *cp = bp + form->curcol;
  FIELD_CELL *s;

  T((T_CALLED("FE_Delete_Word(%p)"), (void *)form));
  Synchronize_Buffer(form);
  if (ISBLANK(*cp))
    returnCode(E_REQUEST_DENIED);


  Adjust_Cursor_Position(form,
    After_Last_Whitespace_Character(bp, form->curcol));
  wmove(form->w, form->currow, form->curcol);
  wclrtoeol(form->w);


  s = Get_First_Whitespace_Character(cp, (int)(ep - cp));

  s = Get_Start_Of_Data(s, (int)(ep - s));
  if ((s != cp) && !ISBLANK(*s))
    {

      myADDNSTR(form->w, s, (int)(s - After_End_Of_Data(s, (int)(ep - s))));
    }
  returnCode(E_OK);
}
