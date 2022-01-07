
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exact_info {char* bus; struct devinfo_dev* dev; int loc; } ;
struct devinfo_dev {int dd_flags; int dd_location; int dd_pnpinfo; int dd_name; int dd_parent; } ;


 int DF_ENABLED ;
 int asprintf (char**,char*,int ,int ) ;
 int devinfo_foreach_device_child (struct devinfo_dev*,int (*) (struct devinfo_dev*,void*),void*) ;
 struct devinfo_dev* devinfo_handle_to_device (int ) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
find_exact_dev(struct devinfo_dev *dev, void *arg)
{
 struct devinfo_dev *parent;
 char *loc;
 struct exact_info *info;

 info = arg;
 do {
  if (info->dev != ((void*)0))
   break;
  if (!(dev->dd_flags & DF_ENABLED))
   break;
  parent = devinfo_handle_to_device(dev->dd_parent);
  if (strcmp(info->bus, parent->dd_name) != 0)
   break;
  asprintf(&loc, "%s %s", parent->dd_pnpinfo,
      parent->dd_location);
  if (strcmp(loc, info->loc) == 0)
   info->dev = dev;
  free(loc);
 } while (0);

 return (devinfo_foreach_device_child(dev, find_exact_dev, arg));
}
