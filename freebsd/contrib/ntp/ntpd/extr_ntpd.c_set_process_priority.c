
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
struct rtprio {scalar_t__ prio; int type; } ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 int NTPD_PRIO ;
 int PRIO_PROCESS ;
 int RTP_PRIO_REALTIME ;
 int RTP_SET ;
 int SCHED_FIFO ;
 int debug ;
 scalar_t__ errno ;
 int getpid () ;
 int msyslog (int ,char*,...) ;
 int nice (int ) ;
 scalar_t__ priority_done ;
 scalar_t__ rtprio (int ,int,...) ;
 int sched_get_priority_max (int ) ;
 int sched_get_priority_min (int ) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int setpriority (int ,int ,int ) ;

__attribute__((used)) static void
set_process_priority(void)
{
 if (!priority_done)
  msyslog(LOG_ERR, "set_process_priority: No way found to improve our priority");
}
