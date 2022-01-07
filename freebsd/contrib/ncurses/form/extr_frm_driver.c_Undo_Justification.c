
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_4__ {int buf; } ;
typedef int FIELD_CELL ;
typedef TYPE_1__ FIELD ;


 int * After_End_Of_Data (int ,int ) ;
 int Buffer_Length (TYPE_1__*) ;
 int * Get_Start_Of_Data (int ,int ) ;
 int assert (int *) ;
 int myADDNSTR (int *,int *,int) ;
 int wmove (int *,int ,int ) ;

__attribute__((used)) static void
Undo_Justification(FIELD *field, WINDOW *win)
{
  FIELD_CELL *bp;
  int len;

  bp = Get_Start_Of_Data(field->buf, Buffer_Length(field));
  len = (int)(After_End_Of_Data(field->buf, Buffer_Length(field)) - bp);

  if (len > 0)
    {
      assert(win);
      wmove(win, 0, 0);
      myADDNSTR(win, bp, len);
    }
}
