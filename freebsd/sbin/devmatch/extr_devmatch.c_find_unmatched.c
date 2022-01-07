
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {char* dd_name; int dd_flags; char* dd_location; char* dd_pnpinfo; int dd_parent; } ;


 int DF_ATTACHED_ONCE ;
 int DF_ENABLED ;
 int all_flag ;
 int devinfo_foreach_device_child (struct devinfo_dev*,int (*) (struct devinfo_dev*,void*),void*) ;
 struct devinfo_dev* devinfo_handle_to_device (int ) ;
 int free (char*) ;
 scalar_t__ isdigit (char) ;
 int printf (char*,char*,char*,char*,char*) ;
 int search_hints (char*,char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ verbose_flag ;

__attribute__((used)) static int
find_unmatched(struct devinfo_dev *dev, void *arg)
{
 struct devinfo_dev *parent;
 char *bus, *p;

 do {
  if (!all_flag && dev->dd_name[0] != '\0')
   break;
  if (!(dev->dd_flags & DF_ENABLED))
   break;
  if (dev->dd_flags & DF_ATTACHED_ONCE)
   break;
  parent = devinfo_handle_to_device(dev->dd_parent);
  bus = strdup(parent->dd_name);
  p = bus + strlen(bus) - 1;
  while (p >= bus && isdigit(*p))
   p--;
  *++p = '\0';
  if (verbose_flag)
   printf("Searching %s %s bus at %s for pnpinfo %s\n",
       dev->dd_name, bus, dev->dd_location, dev->dd_pnpinfo);
  search_hints(bus, dev->dd_name, dev->dd_pnpinfo);
  free(bus);
 } while (0);

 return (devinfo_foreach_device_child(dev, find_unmatched, arg));
}
