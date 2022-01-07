
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHAR_DBWIDTH ;
 int CursorH ;
 size_t CursorV ;
 scalar_t__** Display ;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int Str (int ) ;
 int T_LE ;
 int T_RI ;
 scalar_t__ T_Tabs ;
 int T_ch ;
 int TermH ;
 int flush () ;
 int putraw (char) ;
 int so_write (scalar_t__*,int) ;
 int tgoto (int ,int,int) ;
 int tputs (int ,int,int ) ;
 int xprintf (char*,int) ;

void
MoveToChar(int where)
{
    int del;

mc_again:
    if (where == CursorH)
 return;

    if (where >= TermH) {




 return;
    }

    if (!where) {
 (void) putraw('\r');
 CursorH = 0;
 return;
    }

    del = where - CursorH;

    if ((del < -4 || del > 4) && GoodStr(T_ch))

 (void) tputs(tgoto(Str(T_ch), where, where), where, PUTPURE);
    else {
 int i;
 if (del > 0) {
     if ((del > 4) && GoodStr(T_RI))
  (void) tputs(tgoto(Str(T_RI), del, del), del, PUTPURE);
     else {

  if (T_Tabs) {
      if ((CursorH & 0370) != (where & ~0x7)
   && Display[CursorV][where & ~0x7] != CHAR_DBWIDTH) {

   for (i = (CursorH & 0370); i < (where & ~0x7); i += 8)
       (void) putraw('\t');
   CursorH = where & ~0x7;




      }
  }



  so_write(&Display[CursorV][CursorH], where - CursorH);

     }
 }
 else {
     if ((-del > 4) && GoodStr(T_LE))
  (void) tputs(tgoto(Str(T_LE), -del, -del), -del, PUTPURE);
     else {

  if (T_Tabs ? (-del > ((where >> 3) + (where & 07)))
      : (-del > where)) {
      (void) putraw('\r');
      CursorH = 0;
      goto mc_again;
  }
  for (i = 0; i < -del; i++)
      (void) putraw('\b');
     }
 }
    }
    CursorH = where;
}
