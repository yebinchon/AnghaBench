
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_cancel {scalar_t__ gctl_seq; int gctl_unit; int gctl_version; } ;


 int EXIT_FAILURE ;
 int G_GATE_CMD_CANCEL ;
 int G_GATE_VERSION ;
 int err (int ,char*,int ) ;
 int flags ;
 int g_gate_ioctl (int ,struct g_gate_ctl_cancel*) ;
 int g_gate_openflags (int ) ;
 int g_gatel_serve (int) ;
 int open (int ,int ) ;
 int path ;
 int unit ;

__attribute__((used)) static void
g_gatel_rescue(void)
{
 struct g_gate_ctl_cancel ggioc;
 int fd;

 fd = open(path, g_gate_openflags(flags));
 if (fd == -1)
  err(EXIT_FAILURE, "Cannot open %s", path);

 ggioc.gctl_version = G_GATE_VERSION;
 ggioc.gctl_unit = unit;
 ggioc.gctl_seq = 0;
 g_gate_ioctl(G_GATE_CMD_CANCEL, &ggioc);

 g_gatel_serve(fd);
}
