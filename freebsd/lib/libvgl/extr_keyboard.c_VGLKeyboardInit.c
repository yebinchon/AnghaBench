
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_oflag; int c_cflag; int c_lflag; scalar_t__* c_cc; } ;


 int CREAD ;
 int CS8 ;
 int ECHO ;
 int ICANON ;
 int IGNBRK ;
 int IGNPAR ;
 int ISIG ;
 int KDGKBMODE ;
 int KDSKBMODE ;
 int * K_CODE ;
 int * K_RAW ;
 int * K_XLATE ;
 int ONLCR ;
 int OPOST ;
 int TCSAFLUSH ;
 int TCSANOW ;
 int VGLKeyboardMode ;
 struct termios VGLKeyboardTty ;



 size_t VMIN ;
 size_t VTIME ;
 int cfmakeraw (struct termios*) ;
 int cfsetispeed (struct termios*,int) ;
 int cfsetospeed (struct termios*,int) ;
 int ioctl (int ,int ,int *) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int,struct termios*) ;

int
VGLKeyboardInit(int mode)
{
  static struct termios term;

  ioctl(0, KDGKBMODE, &VGLKeyboardMode);
  tcgetattr(0, &VGLKeyboardTty);

  term = VGLKeyboardTty;
  cfmakeraw(&term);
  term.c_iflag = IGNPAR | IGNBRK;
  term.c_oflag = OPOST | ONLCR;
  term.c_cflag = CREAD | CS8;
  term.c_lflag &= ~(ICANON | ECHO | ISIG);
  term.c_cc[VTIME] = 0;
  term.c_cc[VMIN] = 0;
  cfsetispeed(&term, 9600);
  cfsetospeed(&term, 9600);
  tcsetattr(0, TCSANOW | TCSAFLUSH, &term);

  switch (mode) {
  case 129:
    ioctl(0, KDSKBMODE, K_RAW);
    break;
  case 130:
    ioctl(0, KDSKBMODE, K_CODE);
    break;
  case 128:
    ioctl(0, KDSKBMODE, K_XLATE);
    break;
  }
  return 0;
}
