
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int c_cflag; int* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
typedef TYPE_1__ TTY ;


 int CLOCAL ;
 int CS8 ;
 int IBAUD ;
 int O_RDWR ;
 int TCSANOW ;
 size_t VMIN ;
 size_t VTIME ;
 int cfsetispeed (TYPE_1__*,int ) ;
 int cfsetospeed (TYPE_1__*,int ) ;
 int close (int) ;
 int errno ;
 int tcgetattr (int,TYPE_1__*) ;
 int tcsetattr (int,int ,TYPE_1__*) ;
 int tty_open (char const*,int ,int) ;

int
icom_init(
 const char *device,
 int speed,
 int trace )
{
 TTY ttyb;
 int fd;
 int rc;
 int saved_errno;

 fd = tty_open(device, O_RDWR, 0777);
 if (fd < 0)
  return -1;

 rc = tcgetattr(fd, &ttyb);
 if (rc < 0) {
  saved_errno = errno;
  close(fd);
  errno = saved_errno;
  return -1;
 }
 ttyb.c_iflag = 0;
 ttyb.c_oflag = 0;
 ttyb.c_cflag = IBAUD|CS8|CLOCAL;
 ttyb.c_lflag = 0;
 ttyb.c_cc[VMIN] = 0;
 ttyb.c_cc[VTIME] = 5;
 cfsetispeed(&ttyb, (u_int)speed);
 cfsetospeed(&ttyb, (u_int)speed);
 rc = tcsetattr(fd, TCSANOW, &ttyb);
 if (rc < 0) {
  saved_errno = errno;
  close(fd);
  errno = saved_errno;
  return -1;
 }
 return (fd);
}
