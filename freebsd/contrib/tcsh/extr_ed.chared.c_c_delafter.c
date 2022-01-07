
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int * Cursor ;
 int * LastChar ;
 int MODE_INSERT ;
 int * Mark ;
 int TCSHOP_INSERT ;
 int UndoAction ;
 int * UndoBuf ;
 int * UndoPtr ;
 int UndoSize ;
 scalar_t__ VImode ;
 int inputmode ;

void
c_delafter(int num)
{
    Char *cp, *kp = ((void*)0);

    if (num > LastChar - Cursor)
 num = (int) (LastChar - Cursor);

    if (num > 0) {
 if (VImode) {
     kp = UndoBuf;
     UndoAction = TCSHOP_INSERT;
     UndoSize = num;
     UndoPtr = Cursor;
     for (cp = Cursor; cp <= LastChar; cp++) {
  *kp++ = *cp;
  *cp = cp[num];
     }
 }
 else
     for (cp = Cursor; cp + num <= LastChar; cp++)
  *cp = cp[num];
 LastChar -= num;

 if (Mark && Mark > Cursor && Mark <= Cursor+num)
  Mark = Cursor;

 else if (Mark && Mark > Cursor)
  Mark -= num;
    }
}
