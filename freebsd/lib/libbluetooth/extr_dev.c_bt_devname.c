
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_devaddr_match_arg {char* devname; int const* bdaddr; } ;
typedef int bdaddr_t ;
typedef int arg ;


 int ENXIO ;
 int HCI_DEVNAME_SIZE ;
 int bt_devaddr_match ;
 scalar_t__ bt_devenum (int *,struct bt_devaddr_match_arg*) ;
 int errno ;
 int memset (struct bt_devaddr_match_arg*,int ,int) ;
 int strlcpy (char*,char*,int ) ;

int
bt_devname(char *devname, bdaddr_t const *addr)
{
 struct bt_devaddr_match_arg arg;

 memset(&arg, 0, sizeof(arg));
 arg.bdaddr = addr;

 if (bt_devenum(&bt_devaddr_match, &arg) < 0)
  return (0);

 if (arg.devname[0] == '\0') {
  errno = ENXIO;
  return (0);
 }

 if (devname != ((void*)0))
  strlcpy(devname, arg.devname, HCI_DEVNAME_SIZE);

 return (1);
}
