
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_cancel {scalar_t__ gctl_seq; int gctl_unit; int gctl_version; } ;


 int G_GATE_CMD_CANCEL ;
 int G_GATE_VERSION ;
 int errno ;
 int g_gate_ioctl (int ,struct g_gate_ctl_cancel*) ;
 int g_gate_xlog (char*,int ) ;
 int g_gatec_connect () ;
 int g_gatec_loop () ;
 int mydaemon () ;
 int strerror (int ) ;
 int unit ;

__attribute__((used)) static void
g_gatec_rescue(void)
{
 struct g_gate_ctl_cancel ggioc;

 if (!g_gatec_connect())
  g_gate_xlog("Cannot connect: %s.", strerror(errno));

 ggioc.gctl_version = G_GATE_VERSION;
 ggioc.gctl_unit = unit;
 ggioc.gctl_seq = 0;
 g_gate_ioctl(G_GATE_CMD_CANCEL, &ggioc);

 mydaemon();
 g_gatec_loop();
}
