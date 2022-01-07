
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 int F_GETFD ;
 int O_NOCTTY ;
 int O_RDONLY ;
 int O_WRONLY ;
 int close (int const) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fcntl (int,int ) ;
 int open (char*,int) ;

extern void
tuklib_open_stdxxx(int err_status)
{





 for (int i = 0; i <= 2; ++i) {

  if (fcntl(i, F_GETFD) == -1 && errno == EBADF) {




   const int fd = open("/dev/null", O_NOCTTY
     | (i == 0 ? O_WRONLY : O_RDONLY));

   if (fd != i) {
    if (fd != -1)
     (void)close(fd);






    exit(err_status);
   }
  }
 }


 return;
}
