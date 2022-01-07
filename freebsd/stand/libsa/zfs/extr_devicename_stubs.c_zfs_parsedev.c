
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfs_devdesc {int dummy; } ;


 int EINVAL ;

__attribute__((weak))
int
zfs_parsedev(struct zfs_devdesc *dev, const char *devspec, const char **path)
{
 return (EINVAL);
}
