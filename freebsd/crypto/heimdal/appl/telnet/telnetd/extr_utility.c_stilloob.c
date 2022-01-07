
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 int fatal (int ,char*) ;
 int fatalperror (int ,char*) ;
 int ourpty ;
 int select (int,int ,int ,int *,struct timeval*) ;

int
stilloob(int s)
{
    static struct timeval timeout = { 0 };
    fd_set excepts;
    int value;

    if (s >= FD_SETSIZE)
 fatal(ourpty, "fd too large");

    do {
 FD_ZERO(&excepts);
 FD_SET(s, &excepts);
 value = select(s+1, 0, 0, &excepts, &timeout);
    } while ((value == -1) && (errno == EINTR));

    if (value < 0) {
 fatalperror(ourpty, "select");
    }
    if (FD_ISSET(s, &excepts)) {
 return 1;
    } else {
 return 0;
    }
}
