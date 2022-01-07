
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int B921600 ;
 int EXIT_FAILURE ;
 int TCSANOW ;
 int TIOCGQSIZE ;
 int TIOCSQSIZE ;
 int cfmakeraw (struct termios*) ;
 int cfsetspeed (struct termios*,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int,int) ;
 int ioctl (int,int ,int*) ;
 int qsize ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

__attribute__((used)) static void
condition(int fd)
{
 struct termios tios;

 if (qsize) {
  int opt = qsize;
  if (ioctl(fd, TIOCSQSIZE, &opt) == -1)
   err(EXIT_FAILURE, "Couldn't set tty(4) buffer size");
  if (ioctl(fd, TIOCGQSIZE, &opt) == -1)
   err(EXIT_FAILURE, "Couldn't get tty(4) buffer size");
  if (opt != qsize)
   errx(EXIT_FAILURE, "Wrong qsize %d != %d\n",
       qsize, opt);
 }
 if (tcgetattr(fd, &tios) == -1)
  err(EXIT_FAILURE, "tcgetattr()");
 cfmakeraw(&tios);
 cfsetspeed(&tios, B921600);
 if (tcsetattr(fd, TCSANOW, &tios) == -1)
  err(EXIT_FAILURE, "tcsetattr()");
}
