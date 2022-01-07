
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 scalar_t__ abrtflag ;
 int fflush (int ) ;
 int longjmp (int ,int) ;
 scalar_t__ mflag ;
 int printf (char*) ;
 int sendabort ;
 int stdout ;

__attribute__((used)) static RETSIGTYPE
abortsend (int sig)
{

    mflag = 0;
    abrtflag = 0;
    printf ("\nsend aborted\nwaiting for remote to finish abort\n");
    fflush (stdout);
    longjmp (sendabort, 1);
}
