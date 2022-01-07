
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _tftp_logtostdout ;
 int openlog (char const*,int,int) ;

void
tftp_openlog(const char *ident, int logopt, int facility)
{

 _tftp_logtostdout = (ident == ((void*)0));
 if (_tftp_logtostdout == 0)
  openlog(ident, logopt, facility);
}
