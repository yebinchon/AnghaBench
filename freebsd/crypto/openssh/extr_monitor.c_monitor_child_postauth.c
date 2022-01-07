
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct monitor {int m_recvfd; int m_pid; } ;
struct TYPE_2__ {scalar_t__ permit_pty_flag; } ;


 int MONITOR_REQ_MODULI ;
 int MONITOR_REQ_PTY ;
 int MONITOR_REQ_PTYCLEANUP ;
 int MONITOR_REQ_SIGN ;
 int MONITOR_REQ_TERM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGXFSZ ;
 int * SIG_IGN ;
 TYPE_1__* auth_opts ;
 int close (int) ;
 int mon_dispatch ;
 int mon_dispatch_postauth20 ;
 int monitor_child_handler ;
 int monitor_permit (int ,int ,int) ;
 int monitor_read (struct monitor*,int ,int *) ;
 int monitor_set_child_handler (int ) ;
 int signal (int ,int *) ;

void
monitor_child_postauth(struct monitor *pmonitor)
{
 close(pmonitor->m_recvfd);
 pmonitor->m_recvfd = -1;

 monitor_set_child_handler(pmonitor->m_pid);
 signal(SIGHUP, &monitor_child_handler);
 signal(SIGTERM, &monitor_child_handler);
 signal(SIGINT, &monitor_child_handler);




 mon_dispatch = mon_dispatch_postauth20;


 monitor_permit(mon_dispatch, MONITOR_REQ_MODULI, 1);
 monitor_permit(mon_dispatch, MONITOR_REQ_SIGN, 1);
 monitor_permit(mon_dispatch, MONITOR_REQ_TERM, 1);

 if (auth_opts->permit_pty_flag) {
  monitor_permit(mon_dispatch, MONITOR_REQ_PTY, 1);
  monitor_permit(mon_dispatch, MONITOR_REQ_PTYCLEANUP, 1);
 }

 for (;;)
  monitor_read(pmonitor, mon_dispatch, ((void*)0));
}
