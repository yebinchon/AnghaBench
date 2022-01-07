
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ abrtflag ;
 int fflush (int ) ;
 int longjmp (int ,int) ;
 scalar_t__ mflag ;
 int printf (char*) ;
 int recvabort ;
 int stdout ;

void
abortrecv (int sig)
{

    mflag = 0;
    abrtflag = 0;
    printf ("\nreceive aborted\nwaiting for remote to finish abort\n");
    fflush (stdout);
    longjmp (recvabort, 1);
}
