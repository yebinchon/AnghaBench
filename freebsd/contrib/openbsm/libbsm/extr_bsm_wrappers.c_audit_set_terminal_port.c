
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_rdev; } ;
typedef int dev_t ;


 scalar_t__ EBADF ;
 int LOG_ERR ;
 int NODEV ;
 int STDIN_FILENO ;
 scalar_t__ errno ;
 scalar_t__ fstat (int ,struct stat*) ;
 int kAUBadParamErr ;
 int kAUNoErr ;
 int kAUStatErr ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (scalar_t__) ;
 int syslog (int ,char*,int ) ;

int
audit_set_terminal_port(dev_t *p)
{
 struct stat st;

 if (p == ((void*)0))
  return (kAUBadParamErr);




 *p = -1;



 if (fstat(STDIN_FILENO, &st) != 0) {
  if (errno != EBADF) {
   syslog(LOG_ERR, "fstat() failed (%s)",
       strerror(errno));
   return (kAUStatErr);
  }
  if (stat("/dev/console", &st) != 0) {
   syslog(LOG_ERR, "stat() failed (%s)",
       strerror(errno));
   return (kAUStatErr);
  }
 }
 *p = st.st_rdev;
 return (kAUNoErr);
}
