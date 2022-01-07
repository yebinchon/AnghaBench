
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_create {int gctl_unit; int gctl_info; scalar_t__ gctl_maxcount; int gctl_flags; int gctl_timeout; scalar_t__ gctl_sectorsize; int gctl_mediasize; int gctl_version; } ;
typedef int ggioc ;


 int EXIT_FAILURE ;
 int G_GATE_CMD_CREATE ;
 char* G_GATE_PROVIDER_NAME ;
 int G_GATE_VERSION ;
 int O_DIRECT ;
 int O_FSYNC ;
 int err (int ,char*,int ) ;
 int flags ;
 int g_gate_ioctl (int ,struct g_gate_ctl_create*) ;
 int g_gate_mediasize (int) ;
 int g_gate_openflags (int ) ;
 scalar_t__ g_gate_sectorsize (int) ;
 int g_gatel_serve (int) ;
 int memset (struct g_gate_ctl_create*,int ,int) ;
 int open (int ,int) ;
 int path ;
 int printf (char*,char*,int) ;
 scalar_t__ sectorsize ;
 int strlcpy (int ,int ,int) ;
 int timeout ;
 int unit ;

__attribute__((used)) static void
g_gatel_create(void)
{
 struct g_gate_ctl_create ggioc;
 int fd;

 fd = open(path, g_gate_openflags(flags) | O_DIRECT | O_FSYNC);
 if (fd == -1)
  err(EXIT_FAILURE, "Cannot open %s", path);
 memset(&ggioc, 0, sizeof(ggioc));
 ggioc.gctl_version = G_GATE_VERSION;
 ggioc.gctl_unit = unit;
 ggioc.gctl_mediasize = g_gate_mediasize(fd);
 if (sectorsize == 0)
  sectorsize = g_gate_sectorsize(fd);
 ggioc.gctl_sectorsize = sectorsize;
 ggioc.gctl_timeout = timeout;
 ggioc.gctl_flags = flags;
 ggioc.gctl_maxcount = 0;
 strlcpy(ggioc.gctl_info, path, sizeof(ggioc.gctl_info));
 g_gate_ioctl(G_GATE_CMD_CREATE, &ggioc);
 if (unit == -1)
  printf("%s%u\n", G_GATE_PROVIDER_NAME, ggioc.gctl_unit);
 unit = ggioc.gctl_unit;
 g_gatel_serve(fd);
}
