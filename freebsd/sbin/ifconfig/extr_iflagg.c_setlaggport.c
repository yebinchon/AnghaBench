
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqport {int rp_portname; int rp_ifname; } ;
struct afswtch {int dummy; } ;
typedef int rp ;


 scalar_t__ EEXIST ;
 int SIOCSLAGGPORT ;
 int bzero (struct lagg_reqport*,int) ;
 scalar_t__ errno ;
 int exit_code ;
 scalar_t__ ioctl (int,int ,struct lagg_reqport*) ;
 char const* name ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,char const*,int) ;
 int warnx (char*,char const*,char const*,int ) ;

__attribute__((used)) static void
setlaggport(const char *val, int d, int s, const struct afswtch *afp)
{
 struct lagg_reqport rp;

 bzero(&rp, sizeof(rp));
 strlcpy(rp.rp_ifname, name, sizeof(rp.rp_ifname));
 strlcpy(rp.rp_portname, val, sizeof(rp.rp_portname));







 if (ioctl(s, SIOCSLAGGPORT, &rp) && errno != EEXIST) {
  warnx("%s %s: SIOCSLAGGPORT: %s",
      name, val, strerror(errno));
  exit_code = 1;
 }
}
