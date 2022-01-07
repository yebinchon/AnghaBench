
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int mode_t ;
typedef scalar_t__ dev_t ;
typedef int dev ;


 scalar_t__ NODEV ;
 scalar_t__ S_ISBLK (scalar_t__) ;
 scalar_t__ S_ISCHR (int ) ;
 int snprintf (char*,int,char*,char,int ) ;
 int strlcpy (char*,char*,int) ;
 int sysctlbyname (char*,char*,size_t*,scalar_t__*,int) ;

char *
devname_r(dev_t dev, mode_t type, char *buf, int len)
{
 int i;
 size_t j;

 if (dev == NODEV || !(S_ISCHR(type) || S_ISBLK(dev))) {
  strlcpy(buf, "#NODEV", len);
  return (buf);
 }

 if (S_ISCHR(type)) {
  j = len;
  i = sysctlbyname("kern.devname", buf, &j, &dev, sizeof (dev));
  if (i == 0)
   return (buf);
 }


 snprintf(buf, len, "#%c:%#jx",
     S_ISCHR(type) ? 'C' : 'B', (uintmax_t)dev);
 return (buf);
}
