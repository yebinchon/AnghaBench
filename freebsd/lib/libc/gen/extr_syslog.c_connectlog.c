
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int SyslogAddr ;


 int AF_UNIX ;
 scalar_t__ CONNDEF ;
 scalar_t__ CONNPRIV ;
 int LogFile ;
 scalar_t__ NOCONN ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int _PATH_LOG ;
 int _PATH_LOG_PRIV ;
 int _PATH_OLDLOG ;
 int _close (int) ;
 int _connect (int,struct sockaddr*,int) ;
 int _socket (int ,int,int ) ;
 scalar_t__ status ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void
connectlog(void)
{
 struct sockaddr_un SyslogAddr;

 if (LogFile == -1) {
  if ((LogFile = _socket(AF_UNIX, SOCK_DGRAM | SOCK_CLOEXEC,
      0)) == -1)
   return;
 }
 if (LogFile != -1 && status == NOCONN) {
  SyslogAddr.sun_len = sizeof(SyslogAddr);
  SyslogAddr.sun_family = AF_UNIX;





  (void)strncpy(SyslogAddr.sun_path, _PATH_LOG_PRIV,
      sizeof SyslogAddr.sun_path);
  if (_connect(LogFile, (struct sockaddr *)&SyslogAddr,
      sizeof(SyslogAddr)) != -1)
   status = CONNPRIV;

  if (status == NOCONN) {
   (void)strncpy(SyslogAddr.sun_path, _PATH_LOG,
       sizeof SyslogAddr.sun_path);
   if (_connect(LogFile, (struct sockaddr *)&SyslogAddr,
       sizeof(SyslogAddr)) != -1)
    status = CONNDEF;
  }

  if (status == NOCONN) {




   (void)strncpy(SyslogAddr.sun_path, _PATH_OLDLOG,
       sizeof SyslogAddr.sun_path);
   if (_connect(LogFile, (struct sockaddr *)&SyslogAddr,
       sizeof(SyslogAddr)) != -1)
    status = CONNDEF;
  }

  if (status == NOCONN) {
   (void)_close(LogFile);
   LogFile = -1;
  }
 }
}
