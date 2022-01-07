
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_whence; int l_type; int member_0; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 scalar_t__ EWOULDBLOCK ;
 int F_RDLCK ;
 int F_SETLK ;
 int F_SETLKW ;
 int F_UNLCK ;
 int F_WRLCK ;

 int LOCK_NB ;


 int SEEK_SET ;
 scalar_t__ errno ;
 int fcntl (int,int ,struct flock*) ;

int
flock(int fd, int op)
{
 int rc = 0;
 rc = -1;
 errno = ENOSYS;


 return rc;
}
