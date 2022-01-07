
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifgroupreq {int ifgr_group; int ifgr_name; } ;
struct afswtch {int dummy; } ;
typedef int ifgr ;
typedef int caddr_t ;


 scalar_t__ ENOENT ;
 scalar_t__ IFNAMSIZ ;
 int SIOCDIFGROUP ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int ioctl (int,int ,int ) ;
 scalar_t__ isdigit (char const) ;
 int memset (struct ifgroupreq*,int ,int) ;
 char const* name ;
 scalar_t__ strlcpy (int ,char const*,scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static void
unsetifgroup(const char *group_name, int d, int s, const struct afswtch *rafp)
{
 struct ifgroupreq ifgr;

 memset(&ifgr, 0, sizeof(ifgr));
 strlcpy(ifgr.ifgr_name, name, IFNAMSIZ);

 if (group_name[0] && isdigit(group_name[strlen(group_name) - 1]))
  errx(1, "unsetifgroup: group names may not end in a digit");

 if (strlcpy(ifgr.ifgr_group, group_name, IFNAMSIZ) >= IFNAMSIZ)
  errx(1, "unsetifgroup: group name too long");
 if (ioctl(s, SIOCDIFGROUP, (caddr_t)&ifgr) == -1 && errno != ENOENT)
  err(1, "SIOCDIFGROUP");
}
