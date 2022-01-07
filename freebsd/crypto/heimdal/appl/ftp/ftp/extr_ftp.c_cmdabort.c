
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abrtflag ;
 int fflush (int ) ;
 int longjmp (int ,int) ;
 int printf (char*) ;
 int ptabort ;
 scalar_t__ ptflag ;
 int stdout ;

void
cmdabort (int sig)
{

    printf ("\n");
    fflush (stdout);
    abrtflag++;
    if (ptflag)
 longjmp (ptabort, 1);
}
