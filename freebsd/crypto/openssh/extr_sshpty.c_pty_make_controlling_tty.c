
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int O_RDWR ;
 int O_WRONLY ;
 int TIOCNOTTY ;
 int TIOCSCTTY ;
 char const* _PATH_TTY ;
 int close (int) ;
 int debug (char*) ;
 int errno ;
 int error (char*,...) ;
 scalar_t__ ioctl (int,int ,int *) ;
 int open (char const*,int) ;
 scalar_t__ setpgrp (int ,int ) ;
 scalar_t__ setsid () ;
 char* strerror (int ) ;

void
pty_make_controlling_tty(int *ttyfd, const char *tty)
{
 int fd;
 if (setsid() < 0)
  error("setsid: %.100s", strerror(errno));





 fd = open(_PATH_TTY, O_RDWR | O_NOCTTY);
 if (fd >= 0) {
  error("Failed to disconnect from controlling tty.");
  close(fd);
 }
 fd = open(tty, O_RDWR);
 if (fd < 0)
  error("%.100s: %.100s", tty, strerror(errno));
 else
  close(fd);


 fd = open(_PATH_TTY, O_WRONLY);
 if (fd < 0)
  error("open /dev/tty failed - could not set controlling tty: %.100s",
      strerror(errno));
 else
  close(fd);
}
