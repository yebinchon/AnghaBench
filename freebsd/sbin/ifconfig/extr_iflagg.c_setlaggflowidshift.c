
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqopts {int ro_flowid_shift; int ro_ifname; int ro_opts; } ;
struct afswtch {int dummy; } ;
typedef int ro ;


 int LAGG_OPT_FLOWIDSHIFT ;
 int LAGG_OPT_FLOWIDSHIFT_MASK ;
 int SIOCSLAGGOPTS ;
 int bzero (struct lagg_reqopts*,int) ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ ioctl (int,int ,struct lagg_reqopts*) ;
 int name ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ strtol (char const*,int *,int) ;

__attribute__((used)) static void
setlaggflowidshift(const char *val, int d, int s, const struct afswtch *afp)
{
 struct lagg_reqopts ro;

 bzero(&ro, sizeof(ro));
 ro.ro_opts = LAGG_OPT_FLOWIDSHIFT;
 strlcpy(ro.ro_ifname, name, sizeof(ro.ro_ifname));
 ro.ro_flowid_shift = (int)strtol(val, ((void*)0), 10);
 if (ro.ro_flowid_shift & ~LAGG_OPT_FLOWIDSHIFT_MASK)
  errx(1, "Invalid flowid_shift option: %s", val);

 if (ioctl(s, SIOCSLAGGOPTS, &ro) != 0)
  err(1, "SIOCSLAGGOPTS");
}
