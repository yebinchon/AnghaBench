
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_cancel {scalar_t__ gctl_seq; int gctl_unit; int gctl_version; } ;


 int G_GATE_CMD_CANCEL ;
 int G_GATE_VERSION ;
 int LOG_NOTICE ;
 int SIGUSR1 ;
 int g_gate_ioctl (int ,struct g_gate_ctl_cancel*) ;
 int g_gate_log (int ,char*,int ,int ) ;
 int g_gatec_connect () ;
 int g_gatec_start () ;
 int host ;
 int path ;
 int signal (int ,int ) ;
 int signop ;
 int sleep (int) ;
 int unit ;

__attribute__((used)) static void
g_gatec_loop(void)
{
 struct g_gate_ctl_cancel ggioc;

 signal(SIGUSR1, signop);
 for (;;) {
  g_gatec_start();
  g_gate_log(LOG_NOTICE, "Disconnected [%s %s]. Connecting...",
      host, path);
  while (!g_gatec_connect()) {
   sleep(2);
   g_gate_log(LOG_NOTICE, "Connecting [%s %s]...", host,
       path);
  }
  ggioc.gctl_version = G_GATE_VERSION;
  ggioc.gctl_unit = unit;
  ggioc.gctl_seq = 0;
  g_gate_ioctl(G_GATE_CMD_CANCEL, &ggioc);
 }
}
