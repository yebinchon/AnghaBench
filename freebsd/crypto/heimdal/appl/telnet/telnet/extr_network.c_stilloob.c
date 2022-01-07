
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 scalar_t__ net ;
 int perror (char*) ;
 int quit () ;
 int select (scalar_t__,int ,int ,int *,struct timeval*) ;

int
stilloob(void)
{
    static struct timeval timeout = { 0 };
    fd_set excepts;
    int value;

    do {
 FD_ZERO(&excepts);
 if (net >= FD_SETSIZE)
     errx (1, "fd too large");
 FD_SET(net, &excepts);
 value = select(net+1, 0, 0, &excepts, &timeout);
    } while ((value == -1) && (errno == EINTR));

    if (value < 0) {
 perror("select");
 quit();

    }
    if (FD_ISSET(net, &excepts)) {
 return 1;
    } else {
 return 0;
    }
}
