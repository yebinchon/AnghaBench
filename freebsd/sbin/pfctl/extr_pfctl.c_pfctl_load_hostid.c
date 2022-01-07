
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pfctl {int dummy; } ;


 int DIOCSETHOSTID ;
 int dev ;
 scalar_t__ ioctl (int ,int ,int *) ;
 int warnx (char*) ;

int
pfctl_load_hostid(struct pfctl *pf, u_int32_t hostid)
{
 if (ioctl(dev, DIOCSETHOSTID, &hostid)) {
  warnx("DIOCSETHOSTID");
  return (1);
 }
 return (0);
}
