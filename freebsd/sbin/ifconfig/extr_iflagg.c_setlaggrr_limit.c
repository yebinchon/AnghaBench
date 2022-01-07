
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqopts {int ro_bkt; int ro_ifname; } ;
struct afswtch {int dummy; } ;
typedef int ro ;


 int SIOCSLAGGOPTS ;
 int bzero (struct lagg_reqopts*,int) ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct lagg_reqopts*) ;
 int name ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ strtol (char const*,int *,int) ;

__attribute__((used)) static void
setlaggrr_limit(const char *val, int d, int s, const struct afswtch *afp)
{
 struct lagg_reqopts ro;

 bzero(&ro, sizeof(ro));
 strlcpy(ro.ro_ifname, name, sizeof(ro.ro_ifname));
 ro.ro_bkt = (int)strtol(val, ((void*)0), 10);

 if (ioctl(s, SIOCSLAGGOPTS, &ro) != 0)
  err(1, "SIOCSLAGG");
}
