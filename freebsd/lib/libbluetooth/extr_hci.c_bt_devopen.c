
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_hci {int hci_len; int hci_node; int hci_family; } ;
struct sockaddr {int dummy; } ;
typedef int ha ;
typedef int bdaddr_t ;


 int AF_BLUETOOTH ;
 int BLUETOOTH_PROTO_HCI ;
 int EINVAL ;
 int ENXIO ;
 int PF_BLUETOOTH ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ bt_aton (char const*,int *) ;
 int * bt_dev2node (char const*,int ,int) ;
 int bt_devname (int ,int *) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int memset (struct sockaddr_hci*,int ,int) ;
 int socket (int ,int ,int ) ;

int
bt_devopen(char const *devname)
{
 struct sockaddr_hci ha;
 bdaddr_t ba;
 int s;

 if (devname == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 memset(&ha, 0, sizeof(ha));
 ha.hci_len = sizeof(ha);
 ha.hci_family = AF_BLUETOOTH;

 if (bt_aton(devname, &ba)) {
  if (!bt_devname(ha.hci_node, &ba))
   return (-1);
 } else if (bt_dev2node(devname, ha.hci_node,
     sizeof(ha.hci_node)) == ((void*)0)) {
  errno = ENXIO;
  return (-1);
 }

 s = socket(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_HCI);
 if (s < 0)
  return (-1);

 if (bind(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
     connect(s, (struct sockaddr *) &ha, sizeof(ha)) < 0) {
  close(s);
  return (-1);
 }

 return (s);
}
