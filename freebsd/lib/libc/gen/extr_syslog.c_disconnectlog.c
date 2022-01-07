
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LogFile ;
 int NOCONN ;
 int _close (int) ;
 int status ;

__attribute__((used)) static void
disconnectlog(void)
{





 if (LogFile != -1) {
  _close(LogFile);
  LogFile = -1;
 }
 status = NOCONN;
}
