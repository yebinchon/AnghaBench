
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_ctl_create {int gctl_unit; int gctl_info; int gctl_timeout; int gctl_maxcount; int gctl_flags; int gctl_sectorsize; int gctl_mediasize; int gctl_version; } ;
typedef int ggioc ;


 int G_GATE_CMD_CREATE ;
 char* G_GATE_PROVIDER_NAME ;
 int G_GATE_VERSION ;
 int errno ;
 int fflush (int ) ;
 int flags ;
 int g_gate_ioctl (int ,struct g_gate_ctl_create*) ;
 int g_gate_xlog (char*,int ) ;
 int g_gatec_connect () ;
 int g_gatec_loop () ;
 char* host ;
 int mediasize ;
 int memset (struct g_gate_ctl_create*,int ,int) ;
 int mydaemon () ;
 char* path ;
 int port ;
 int printf (char*,char*,int) ;
 int queue_size ;
 int sectorsize ;
 int snprintf (int ,int,char*,char*,int,char*) ;
 int stdout ;
 int strerror (int ) ;
 int timeout ;
 int unit ;

__attribute__((used)) static void
g_gatec_create(void)
{
 struct g_gate_ctl_create ggioc;

 if (!g_gatec_connect())
  g_gate_xlog("Cannot connect: %s.", strerror(errno));




 memset(&ggioc, 0, sizeof(ggioc));
 ggioc.gctl_version = G_GATE_VERSION;
 ggioc.gctl_mediasize = mediasize;
 ggioc.gctl_sectorsize = sectorsize;
 ggioc.gctl_flags = flags;
 ggioc.gctl_maxcount = queue_size;
 ggioc.gctl_timeout = timeout;
 ggioc.gctl_unit = unit;
 snprintf(ggioc.gctl_info, sizeof(ggioc.gctl_info), "%s:%u %s", host,
     port, path);
 g_gate_ioctl(G_GATE_CMD_CREATE, &ggioc);
 if (unit == -1) {
  printf("%s%u\n", G_GATE_PROVIDER_NAME, ggioc.gctl_unit);
  fflush(stdout);
 }
 unit = ggioc.gctl_unit;

 mydaemon();
 g_gatec_loop();
}
