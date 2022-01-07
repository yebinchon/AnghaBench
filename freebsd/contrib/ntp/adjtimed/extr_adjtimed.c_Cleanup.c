
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_ds {int dummy; } ;


 scalar_t__ EINVAL ;
 int Exit (int) ;
 int IPC_RMID ;
 int LOG_ERR ;
 int ResetClockRate () ;
 scalar_t__ errno ;
 int mqid ;
 int msgctl (int ,int ,struct msqid_ds*) ;
 int msyslog (int ,char*) ;
 int perror (char*) ;

void
Cleanup(void)
{
 ResetClockRate();

 if (msgctl(mqid, IPC_RMID, (struct msqid_ds *)0) == -1) {
  if (errno != EINVAL) {
   msyslog(LOG_ERR, "remove message queue: %m");
   perror("adjtimed: remove message queue");
  }
 }

 Exit(2);
}
