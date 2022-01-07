
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 int fatalperror (int ,char*) ;
 int memset (char*,int ,int) ;
 int pty ;
 int select (int,int *,int *,int *,struct timeval*) ;

int
stilloob(int s)
{
    static struct timeval timeout = { 0, 0 };
    fd_set excepts;
    int value;

    do {
 FD_ZERO(&excepts);
 FD_SET(s, &excepts);
 memset((char *)&timeout, 0, sizeof timeout);
 value = select(s+1, (fd_set *)0, (fd_set *)0, &excepts, &timeout);
    } while ((value == -1) && (errno == EINTR));

    if (value < 0) {
 fatalperror(pty, "select");
    }
    if (FD_ISSET(s, &excepts)) {
 return 1;
    } else {
 return 0;
    }
}
