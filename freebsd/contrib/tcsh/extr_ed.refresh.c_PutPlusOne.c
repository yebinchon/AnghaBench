
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR_DBWIDTH ;
 scalar_t__ CursorH ;
 size_t CursorV ;
 int** Display ;
 int LITERAL ;
 int LIT_FACTOR ;
 int MARGIN_AUTO ;
 int MARGIN_MAGIC ;
 int OldvcV ;
 int T_Margin ;
 scalar_t__ TermH ;
 int* litptr ;
 int putraw (char) ;
 int putwraw (int) ;

__attribute__((used)) static void
PutPlusOne(Char c, int width)
{
    while (width > 1 && CursorH + width > TermH)
 PutPlusOne(' ', 1);
    if ((c & LITERAL) != 0) {
 Char *d;
 for (d = litptr + (c & ~LITERAL) * LIT_FACTOR; *d; d++)
     (void) putwraw(*d);
    } else {
 (void) putwraw(c);
    }
    Display[CursorV][CursorH++] = (Char) c;
    while (--width > 0)
 Display[CursorV][CursorH++] = CHAR_DBWIDTH;
    if (CursorH >= TermH) {
 CursorH = 0;
 CursorV++;
 OldvcV++;
 if (T_Margin & MARGIN_AUTO) {
     if (T_Margin & MARGIN_MAGIC) {
  (void) putraw(' ');
  (void) putraw('\b');
     }
 }
 else {
     (void) putraw('\r');
     (void) putraw('\n');
 }
    }
}
