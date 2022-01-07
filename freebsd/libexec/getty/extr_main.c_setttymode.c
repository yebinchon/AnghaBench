
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIOASYNC ;
 int FIONBIO ;
 scalar_t__ IS ;
 int LOG_ERR ;
 scalar_t__ OS ;
 scalar_t__ SP ;
 int STDIN_FILENO ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int cfmakeraw (int *) ;
 int cfsetispeed (int *,int ) ;
 int cfsetospeed (int *,int ) ;
 int exit (int) ;
 int ioctl (int ,int ,int*) ;
 int set_flags (int ) ;
 int setchars () ;
 int speed (scalar_t__) ;
 int syslog (int ,char*,int ) ;
 int tcflush (int ,int ) ;
 scalar_t__ tcsetattr (int ,int ,int *) ;
 int tmode ;
 int ttyn ;

__attribute__((used)) static void
setttymode(int raw)
{
 int off = 0;

 (void)tcflush(STDIN_FILENO, TCIOFLUSH);
 ioctl(STDIN_FILENO, FIONBIO, &off);
 ioctl(STDIN_FILENO, FIOASYNC, &off);

 if (IS)
  cfsetispeed(&tmode, speed(IS));
 else if (SP)
  cfsetispeed(&tmode, speed(SP));
 if (OS)
  cfsetospeed(&tmode, speed(OS));
 else if (SP)
  cfsetospeed(&tmode, speed(SP));
 set_flags(0);
 setchars();
 if (raw)
  cfmakeraw(&tmode);
 if (tcsetattr(STDIN_FILENO, TCSANOW, &tmode) < 0) {
  syslog(LOG_ERR, "tcsetattr %s: %m", ttyn);
  exit(1);
 }
}
