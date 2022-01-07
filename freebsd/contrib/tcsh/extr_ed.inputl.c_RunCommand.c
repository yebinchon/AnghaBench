
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ClearDisp () ;
 int ClearLines () ;
 int Cookedmode () ;
 int GettingInput ;
 scalar_t__ NeedsRedraw ;
 int Rawmode () ;
 int Refresh () ;
 int doeval1 (int **) ;
 int xputchar (char) ;

__attribute__((used)) static void
RunCommand(Char *str)
{
    Char *cmd[2];

    xputchar('\n');

    cmd[0] = str;
    cmd[1] = ((void*)0);

    (void) Cookedmode();
    GettingInput = 0;

    doeval1(cmd);

    (void) Rawmode();
    GettingInput = 1;

    ClearLines();
    ClearDisp();
    NeedsRedraw = 0;
    Refresh();
}
