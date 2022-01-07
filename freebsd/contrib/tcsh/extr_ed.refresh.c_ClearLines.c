
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearEOL (int ) ;
 int MoveToChar (int ) ;
 int MoveToLine (int) ;
 int OldvcV ;
 scalar_t__ T_CanCEOL ;
 int TermH ;
 int putraw (char) ;

void
ClearLines(void)
{
    int i;

    if (T_CanCEOL) {






 for (i = OldvcV; i >= 0; i--) {
     MoveToLine(i);
     MoveToChar(0);
     ClearEOL(TermH);
 }
    }
    else {
 MoveToLine(OldvcV);
 (void) putraw('\r');
 (void) putraw('\n');
    }
}
