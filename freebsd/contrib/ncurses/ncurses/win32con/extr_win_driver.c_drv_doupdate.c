
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int empty ;
typedef char chtype ;
typedef int cchar_t ;
struct TYPE_16__ {int _maxy; int _curx; int _cury; int _leaveok; TYPE_1__* _line; void* _clear; } ;
struct TYPE_15__ {TYPE_2__* drv; } ;
struct TYPE_14__ {int (* hwcur ) (TYPE_3__*,int ,int ,int ,int ) ;} ;
struct TYPE_13__ {char* text; int firstchar; int lastchar; } ;
typedef TYPE_3__ TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 TYPE_4__* CurScreen (int *) ;
 int ERR ;
 int EndChange (int) ;
 void* FALSE ;
 int MARK_NOCHANGE (TYPE_4__*,int) ;
 TYPE_4__* NewScreen (int *) ;
 int NextChange (int) ;
 int OK ;
 int SetSP () ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int _NOCHANGE ;
 int con_write (TYPE_3__*,int,int,char*,int) ;
 int memcpy (char*,char*,size_t) ;
 int min (int,int) ;
 scalar_t__ okConsoleHandle (TYPE_3__*) ;
 int returnCode (int) ;
 int screen_columns (int *) ;
 int screen_lines (int *) ;
 int selectActiveHandle (TYPE_3__*) ;
 int setcchar (int *,int*,int ,int ,int ) ;
 int stub1 (TYPE_3__*,int ,int ,int ,int ) ;
 int touchwin (TYPE_4__*) ;

__attribute__((used)) static int
drv_doupdate(TERMINAL_CONTROL_BLOCK * TCB)
{
    int result = ERR;
    int y, nonempty, n, x0, x1, Width, Height;
    SCREEN *sp;

    AssertTCB();
    SetSP();

    T((T_CALLED("win32con::drv_doupdate(%p)"), TCB));
    if (okConsoleHandle(TCB)) {

 Width = screen_columns(sp);
 Height = screen_lines(sp);
 nonempty = min(Height, NewScreen(sp)->_maxy + 1);

 if ((CurScreen(sp)->_clear || NewScreen(sp)->_clear)) {
     int x;
     chtype empty[Width];

     for (x = 0; x < Width; x++)
  empty[x] = ' ';


     for (y = 0; y < nonempty; y++) {
  con_write(TCB, y, 0, empty, Width);
  memcpy(empty,
         CurScreen(sp)->_line[y].text,
         (size_t) Width * sizeof(empty[0]));
     }
     CurScreen(sp)->_clear = FALSE;
     NewScreen(sp)->_clear = FALSE;
     touchwin(NewScreen(sp));
 }

 for (y = 0; y < nonempty; y++) {
     x0 = NewScreen(sp)->_line[y].firstchar;
     if (x0 != _NOCHANGE) {
  x1 = NewScreen(sp)->_line[y].lastchar;
  n = x1 - x0 + 1;
  if (n > 0) {
      memcpy(&CurScreen(sp)->_line[y].text[x0],
      &NewScreen(sp)->_line[y].text[x0],
      (size_t) n * sizeof(CurScreen(sp)->_line[y].text[x0]));
      con_write(TCB,
         y,
         x0,
         &CurScreen(sp)->_line[y].text[x0], n);


      if (y <= NewScreen(sp)->_maxy) {
   MARK_NOCHANGE(NewScreen(sp), y);
      }
      if (y <= CurScreen(sp)->_maxy) {
   MARK_NOCHANGE(CurScreen(sp), y);
      }
  }

     }
 }


 for (y = nonempty; y <= NewScreen(sp)->_maxy; y++) {
     MARK_NOCHANGE(NewScreen(sp), y);
 }
 for (y = nonempty; y <= CurScreen(sp)->_maxy; y++) {
     MARK_NOCHANGE(CurScreen(sp), y);
 }

 if (!NewScreen(sp)->_leaveok) {
     CurScreen(sp)->_curx = NewScreen(sp)->_curx;
     CurScreen(sp)->_cury = NewScreen(sp)->_cury;

     TCB->drv->hwcur(TCB,
       0, 0,
       CurScreen(sp)->_cury, CurScreen(sp)->_curx);
 }
 selectActiveHandle(TCB);
 result = OK;
    }
    returnCode(result);
}
