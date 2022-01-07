
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hast_resource {int hr_ggateunit; int hr_provname; int hr_ggatefd; } ;
struct g_gate_ctl_destroy {int gctl_unit; int gctl_force; int gctl_version; } ;
typedef int ggiod ;


 int G_GATE_CMD_DESTROY ;
 int G_GATE_VERSION ;
 int LOG_WARNING ;
 int bzero (struct g_gate_ctl_destroy*,int) ;
 int errno ;
 int ioctl (int ,int ,struct g_gate_ctl_destroy*) ;
 int pjdlog_errno (int ,char*,int ) ;

__attribute__((used)) static void
cleanup(struct hast_resource *res)
{
 int rerrno;


 rerrno = errno;


 if (res->hr_ggateunit >= 0) {
  struct g_gate_ctl_destroy ggiod;

  bzero(&ggiod, sizeof(ggiod));
  ggiod.gctl_version = G_GATE_VERSION;
  ggiod.gctl_unit = res->hr_ggateunit;
  ggiod.gctl_force = 1;
  if (ioctl(res->hr_ggatefd, G_GATE_CMD_DESTROY, &ggiod) == -1) {
   pjdlog_errno(LOG_WARNING,
       "Unable to destroy hast/%s device",
       res->hr_provname);
  }
  res->hr_ggateunit = -1;
 }


 errno = rerrno;
}
