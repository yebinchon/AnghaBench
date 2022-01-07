
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int fd_set ;


 int ExitString (char*,int) ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ TTYBYTES () ;
 int select (scalar_t__,int ,int *,int ,struct timeval*) ;
 scalar_t__ tout ;
 int ttyflush (int ) ;

void
EmptyTerminal(void)
{
    fd_set outs;

    FD_ZERO(&outs);

    if (tout >= FD_SETSIZE)
 ExitString("fd too large", 1);

    if (TTYBYTES() == 0) {
 FD_SET(tout, &outs);
 select(tout+1, 0, &outs, 0,
        (struct timeval *) 0);
    } else {
 while (TTYBYTES()) {
     ttyflush(0);
     FD_SET(tout, &outs);
     select(tout+1, 0, &outs, 0,
     (struct timeval *) 0);
 }
    }
}
