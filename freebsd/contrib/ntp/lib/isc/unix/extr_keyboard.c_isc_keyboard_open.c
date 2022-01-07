
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct termios {int c_iflag; int c_lflag; int c_cflag; int* c_cc; int c_oflag; } ;
typedef int isc_result_t ;
struct TYPE_3__ {int fd; int result; struct termios saved_mode; } ;
typedef TYPE_1__ isc_keyboard_t ;


 int BRKINT ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int INLCR ;
 int ISC_R_IOERROR ;
 int ISC_R_SUCCESS ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int O_RDONLY ;
 int PARENB ;
 int PARMRK ;
 int REQUIRE (int ) ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 int close (int) ;
 int open (char*,int ,int ) ;
 scalar_t__ tcgetattr (int,struct termios*) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;

isc_result_t
isc_keyboard_open(isc_keyboard_t *keyboard) {
 int fd;
 isc_result_t ret;
 struct termios current_mode;

 REQUIRE(keyboard != ((void*)0));

 fd = open("/dev/tty", O_RDONLY, 0);
 if (fd < 0)
  return (ISC_R_IOERROR);

 keyboard->fd = fd;

 if (tcgetattr(fd, &keyboard->saved_mode) < 0) {
  ret = ISC_R_IOERROR;
  goto errout;
 }

 current_mode = keyboard->saved_mode;

 current_mode.c_iflag &=
   ~(IGNBRK|BRKINT|PARMRK|ISTRIP|INLCR|IGNCR|ICRNL|IXON);
 current_mode.c_oflag &= ~OPOST;
 current_mode.c_lflag &= ~(ECHO|ECHONL|ICANON|ISIG|IEXTEN);
 current_mode.c_cflag &= ~(CSIZE|PARENB);
 current_mode.c_cflag |= CS8;

 current_mode.c_cc[VMIN] = 1;
 current_mode.c_cc[VTIME] = 0;
 if (tcsetattr(fd, TCSAFLUSH, &current_mode) < 0) {
  ret = ISC_R_IOERROR;
  goto errout;
 }

 keyboard->result = ISC_R_SUCCESS;

 return (ISC_R_SUCCESS);

 errout:
 close (fd);

 return (ret);
}
