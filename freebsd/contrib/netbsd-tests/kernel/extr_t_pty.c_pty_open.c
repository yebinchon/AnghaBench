
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int O_RDWR ;
 int condition (int) ;
 int err (int ,char*) ;
 int grantpt (int) ;
 int posix_openpt (int ) ;
 int unlockpt (int) ;

__attribute__((used)) static int
pty_open(void)
{
 int fd;

 if ((fd = posix_openpt(O_RDWR)) == -1)
  err(EXIT_FAILURE, "Couldn't pty(4) device");
 condition(fd);
 if (grantpt(fd) == -1)
  err(EXIT_FAILURE,
      "Couldn't grant permissions on tty(4) device");


 condition(fd);

 if (unlockpt(fd) == -1)
  err(EXIT_FAILURE, "unlockpt()");

 return fd;
}
