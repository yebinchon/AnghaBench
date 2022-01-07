
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqopts {int ro_opts; int ro_ifname; } ;
struct afswtch {int dummy; } ;
typedef int ro ;
 int SIOCSLAGGOPTS ;
 int bzero (struct lagg_reqopts*,int) ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct lagg_reqopts*) ;
 int name ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
setlaggsetopt(const char *val, int d, int s, const struct afswtch *afp)
{
 struct lagg_reqopts ro;

 bzero(&ro, sizeof(ro));
 ro.ro_opts = d;
 switch (ro.ro_opts) {
 case 129:
 case -129:
 case 128:
 case -128:
 case 132:
 case -132:
 case 130:
 case -130:
 case 133:
 case -133:
 case 131:
 case -131:
  break;
 default:
  err(1, "Invalid lagg option");
 }
 strlcpy(ro.ro_ifname, name, sizeof(ro.ro_ifname));

 if (ioctl(s, SIOCSLAGGOPTS, &ro) != 0)
  err(1, "SIOCSLAGGOPTS");
}
