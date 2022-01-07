
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_devinfo {int devname; int bdaddr; } ;
struct bt_devaddr_match_arg {int devname; int bdaddr; } ;


 int bdaddr_same (int *,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
bt_devaddr_match(int s, struct bt_devinfo const *di, void *arg)
{
 struct bt_devaddr_match_arg *m = (struct bt_devaddr_match_arg *)arg;

 if (!bdaddr_same(&di->bdaddr, m->bdaddr))
  return (0);

 strlcpy(m->devname, di->devname, sizeof(m->devname));

 return (1);
}
