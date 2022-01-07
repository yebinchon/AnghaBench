
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int O_RDWR ;
 int PPPDISC ;
 int TIOCSETD ;
 int condition (int) ;
 int err (int ,char*) ;
 int ioctl (int,int ,int*) ;
 int open (char const*,int ,int ) ;

__attribute__((used)) static int
tty_open(const char *ttydev)
{
 int fd;

 if ((fd = open(ttydev, O_RDWR, 0)) == -1)
  err(EXIT_FAILURE, "Couldn't open tty(4) device");
 condition(fd);

 return fd;
}
