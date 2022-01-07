
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CHAR_DBWIDTH ;
 size_t CursorH ;
 int CursorV ;
 char** Display ;
 scalar_t__ GoodStr (int ) ;
 int MARGIN_AUTO ;
 int MoveToChar (size_t) ;
 int PUTPURE ;
 int Str (int ) ;
 int T_DO ;
 int T_Margin ;
 int T_UP ;
 int T_up ;
 size_t TermH ;
 int TermV ;
 int flush () ;
 int putraw (char) ;
 int so_write (char*,size_t) ;
 int tgoto (int ,int,int) ;
 int tputs (int ,int,int ) ;
 int xprintf (char*,int) ;

void
MoveToLine(int where)
{
    int del;

    if (where == CursorV)
 return;

    if (where > TermV) {




 return;
    }

    del = where - CursorV;

    if (del > 0) {
 while (del > 0) {
     if ((T_Margin & MARGIN_AUTO) && Display[CursorV][0] != '\0') {
  size_t h;

  for (h = TermH - 1; h > 0 && Display[CursorV][h] == CHAR_DBWIDTH;
       h--)
      ;

  MoveToChar(h);
  so_write(&Display[CursorV][CursorH], TermH - CursorH);
  del--;
     }
     else {
  if ((del > 1) && GoodStr(T_DO)) {
      (void) tputs(tgoto(Str(T_DO), del, del), del, PUTPURE);
      del = 0;
  }
  else {
      for ( ; del > 0; del--)
   (void) putraw('\n');
      CursorH = 0;
  }
     }
 }
    }
    else {
 if (GoodStr(T_UP) && (-del > 1 || !GoodStr(T_up)))
     (void) tputs(tgoto(Str(T_UP), -del, -del), -del, PUTPURE);
 else {
     int i;
     if (GoodStr(T_up))
  for (i = 0; i < -del; i++)
      (void) tputs(Str(T_up), 1, PUTPURE);
 }
    }
    CursorV = where;
}
