
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_devinfo {int bdaddr; int devname; } ;
typedef int bdaddr_t ;


 int bdaddr_copy (int *,int *) ;
 scalar_t__ bt_devinfo (struct bt_devinfo*) ;
 int strlcpy (int ,char const*,int) ;

int
bt_devaddr(char const *devname, bdaddr_t *addr)
{
 struct bt_devinfo di;

 strlcpy(di.devname, devname, sizeof(di.devname));

 if (bt_devinfo(&di) < 0)
  return (0);

 if (addr != ((void*)0))
  bdaddr_copy(addr, &di.bdaddr);

 return (1);
}
