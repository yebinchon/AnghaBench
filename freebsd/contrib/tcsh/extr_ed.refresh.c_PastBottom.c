
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearDisp () ;
 int MoveToLine (int ) ;
 int OldvcV ;
 int flush () ;
 int putraw (char) ;

void
PastBottom(void)
{
    MoveToLine(OldvcV);
    (void) putraw('\r');
    (void) putraw('\n');
    ClearDisp();
    flush();
}
