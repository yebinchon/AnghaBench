
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ abrtflag ;
 int fflush (int ) ;
 int longjmp (int ,int) ;
 scalar_t__ mflag ;
 int printf (char*) ;
 int ptabflg ;
 int ptabort ;
 int stdout ;

void
abortpt (int sig)
{

    printf ("\n");
    fflush (stdout);
    ptabflg++;
    mflag = 0;
    abrtflag = 0;
    longjmp (ptabort, 1);
}
