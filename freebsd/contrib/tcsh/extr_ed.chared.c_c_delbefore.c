
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int Cursor ;
 int InputBuf ;
 int * LastChar ;
 int Mark ;
 int TCSHOP_INSERT ;
 int UndoAction ;
 int * UndoBuf ;
 int UndoPtr ;
 int UndoSize ;
 scalar_t__ VImode ;

void
c_delbefore(int num)
{
    Char *cp, *kp = ((void*)0);

    if (num > Cursor - InputBuf)
 num = (int) (Cursor - InputBuf);

    if (num > 0) {
 if (VImode) {
     kp = UndoBuf;
     UndoAction = TCSHOP_INSERT;
     UndoSize = num;
     UndoPtr = Cursor - num;
     for (cp = Cursor - num; cp <= LastChar; cp++) {
  *kp++ = *cp;
  *cp = cp[num];
     }
 }
 else
     for (cp = Cursor - num; cp + num <= LastChar; cp++)
  *cp = cp[num];
 LastChar -= num;
 Cursor -= num;

 if (Mark && Mark > Cursor && Mark <= Cursor+num)
  Mark = Cursor;

 else if (Mark && Mark > Cursor)
  Mark -= num;
    }
}
