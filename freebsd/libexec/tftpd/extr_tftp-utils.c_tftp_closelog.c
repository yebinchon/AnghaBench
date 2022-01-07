
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _tftp_logtostdout ;
 int closelog () ;

void
tftp_closelog(void)
{

 if (_tftp_logtostdout == 0)
  closelog();
}
