
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int * buf; } ;
typedef int FIELD_CELL ;
typedef TYPE_1__ FIELD ;


 int * After_End_Of_Data (int *,int) ;
 int assert (int) ;
 int getmaxx (int *) ;
 int getmaxy (int *) ;
 int getyx (int *,int,int) ;
 int myADDNSTR (int *,int *,int) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
Buffer_To_Window(const FIELD *field, WINDOW *win)
{
  int width, height;
  int y, x;
  int len;
  int row;
  FIELD_CELL *pBuffer;

  assert(win && field);

  getyx(win, y, x);
  width = getmaxx(win);
  height = getmaxy(win);

  for (row = 0, pBuffer = field->buf;
       row < height;
       row++, pBuffer += width)
    {
      if ((len = (int)(After_End_Of_Data(pBuffer, width) - pBuffer)) > 0)
 {
   wmove(win, row, 0);
   myADDNSTR(win, pBuffer, len);
 }
    }
  wmove(win, y, x);
}
