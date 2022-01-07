
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_devinfo {int devname; } ;


 int HCI_DEVNAME_SIZE ;
 int strlcpy (char*,int ,int ) ;

__attribute__((used)) static int
bt_devany_cb(int s, struct bt_devinfo const *di, void *xdevname)
{
 strlcpy((char *) xdevname, di->devname, HCI_DEVNAME_SIZE);
 return (1);
}
