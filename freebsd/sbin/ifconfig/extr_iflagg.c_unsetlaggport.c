
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqport {int rp_portname; int rp_ifname; } ;
struct afswtch {int dummy; } ;
typedef int rp ;


 int SIOCSLAGGDELPORT ;
 int bzero (struct lagg_reqport*,int) ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct lagg_reqport*) ;
 char const* name ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
unsetlaggport(const char *val, int d, int s, const struct afswtch *afp)
{
 struct lagg_reqport rp;

 bzero(&rp, sizeof(rp));
 strlcpy(rp.rp_ifname, name, sizeof(rp.rp_ifname));
 strlcpy(rp.rp_portname, val, sizeof(rp.rp_portname));

 if (ioctl(s, SIOCSLAGGDELPORT, &rp))
  err(1, "SIOCSLAGGDELPORT");
}
