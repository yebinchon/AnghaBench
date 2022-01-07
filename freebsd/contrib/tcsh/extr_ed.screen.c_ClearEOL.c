
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CursorH ;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int Str (int ) ;
 scalar_t__ T_CanCEOL ;
 int T_ce ;
 int putraw (char) ;
 int tputs (int ,int,int ) ;

void
ClearEOL(int num)
{
    int i;

    if (num <= 0)
 return;

    if (T_CanCEOL && GoodStr(T_ce))
 (void) tputs(Str(T_ce), 1, PUTPURE);
    else {
 for (i = 0; i < num; i++)
     (void) putraw(' ');
 CursorH += num;
    }
}
