
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Argument ;
 int ClearDisp () ;
 int ClearLines () ;
 scalar_t__ DoingArg ;
 scalar_t__ InputBuf ;
 scalar_t__ LastChar ;
 scalar_t__ NeedsRedraw ;
 int Refresh () ;
 int curchoice ;

__attribute__((used)) static int
Repair(void)
{
    if (NeedsRedraw) {
 ClearLines();
 ClearDisp();
 NeedsRedraw = 0;
    }
    Refresh();
    Argument = 1;
    DoingArg = 0;
    curchoice = -1;
    return (int) (LastChar - InputBuf);
}
