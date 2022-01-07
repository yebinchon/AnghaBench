
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int CIOCM_DTR ;
 int LOG_NOTICE ;
 int TIOCMSET ;
 int TIOCM_DTR ;
 int ioctl (int,int ,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
rawdcf_init(
 int fd
 )
{
 int sl232 = CIOCM_DTR;


 if (ioctl(fd, TIOCMSET, (caddr_t)&sl232) == -1)
 {
  syslog(LOG_NOTICE, "rawdcf_init: WARNING: ioctl(fd, TIOCMSET, [C|T]IOCM_DTR): %m");
 }
}
