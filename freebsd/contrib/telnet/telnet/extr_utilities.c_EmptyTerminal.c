
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ TTYBYTES () ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 scalar_t__ tout ;
 int ttyflush (int ) ;

__attribute__((used)) static void
EmptyTerminal(void)
{
    fd_set o;

    FD_ZERO(&o);

    if (TTYBYTES() == 0) {
 FD_SET(tout, &o);
 (void) select(tout+1, (fd_set *) 0, &o, (fd_set *) 0,
   (struct timeval *) 0);
    } else {
 while (TTYBYTES()) {
     (void) ttyflush(0);
     FD_SET(tout, &o);
     (void) select(tout+1, (fd_set *) 0, &o, (fd_set *) 0,
    (struct timeval *) 0);
 }
    }
}
