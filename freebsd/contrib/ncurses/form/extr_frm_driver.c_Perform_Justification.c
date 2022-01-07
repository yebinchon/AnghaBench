
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_4__ {int drows; scalar_t__ dcols; scalar_t__ cols; int just; int buf; } ;
typedef int FIELD_CELL ;
typedef TYPE_1__ FIELD ;


 int * After_End_Of_Data (int ,int ) ;
 int Buffer_Length (TYPE_1__*) ;
 int * Get_Start_Of_Data (int ,int ) ;



 int assert (int) ;
 int myADDNSTR (int *,int *,int) ;
 int wmove (int *,int ,int) ;

__attribute__((used)) static void
Perform_Justification(FIELD *field, WINDOW *win)
{
  FIELD_CELL *bp;
  int len;
  int col = 0;

  bp = Get_Start_Of_Data(field->buf, Buffer_Length(field));
  len = (int)(After_End_Of_Data(field->buf, Buffer_Length(field)) - bp);

  if (len > 0)
    {
      assert(win && (field->drows == 1) && (field->dcols == field->cols));

      switch (field->just)
 {
 case 129:
   break;
 case 130:
   col = (field->cols - len) / 2;
   break;
 case 128:
   col = field->cols - len;
   break;
 default:
   break;
 }

      wmove(win, 0, col);
      myADDNSTR(win, bp, len);
    }
}
