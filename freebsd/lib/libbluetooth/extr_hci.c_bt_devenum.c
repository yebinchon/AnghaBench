
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_hci {int hci_len; char* hci_node; int hci_family; } ;
struct sockaddr {int dummy; } ;
struct nodeinfo {int name; } ;
struct ng_btsocket_hci_raw_node_list_names {int num_names; struct nodeinfo* names; } ;
struct bt_devinfo {char* devname; } ;
typedef int rp ;
typedef int ha ;
typedef scalar_t__ (* bt_devenum_cb_t ) (int,struct bt_devinfo*,void*) ;


 int AF_BLUETOOTH ;
 int BLUETOOTH_PROTO_HCI ;
 int ENOMEM ;
 int HCI_DEVMAX ;
 int PF_BLUETOOTH ;
 int SIOC_HCI_RAW_NODE_LIST_NAMES ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ bt_devinfo (struct bt_devinfo*) ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int free (struct nodeinfo*) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_list_names*,int) ;
 int memset (struct sockaddr_hci*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ stub1 (int,struct bt_devinfo*,void*) ;

int
bt_devenum(bt_devenum_cb_t cb, void *arg)
{
 struct ng_btsocket_hci_raw_node_list_names rp;
 struct bt_devinfo di;
 struct sockaddr_hci ha;
 int s, i, count;

 rp.num_names = HCI_DEVMAX;
 rp.names = (struct nodeinfo *) calloc(rp.num_names,
      sizeof(struct nodeinfo));
 if (rp.names == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }

 memset(&ha, 0, sizeof(ha));
 ha.hci_len = sizeof(ha);
 ha.hci_family = AF_BLUETOOTH;
 ha.hci_node[0] = 'x';

 s = socket(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_HCI);
 if (s < 0) {
  free(rp.names);

  return (-1);
 }

 if (bind(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
     connect(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
     ioctl(s, SIOC_HCI_RAW_NODE_LIST_NAMES, &rp, sizeof(rp)) < 0) {
  close(s);
  free(rp.names);

  return (-1);
 }

 for (count = 0, i = 0; i < rp.num_names; i ++) {
  strlcpy(di.devname, rp.names[i].name, sizeof(di.devname));
  if (bt_devinfo(&di) < 0)
   continue;

  count ++;

  if (cb == ((void*)0))
   continue;

  strlcpy(ha.hci_node, rp.names[i].name, sizeof(ha.hci_node));
  if (bind(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
      connect(s, (struct sockaddr *) &ha, sizeof(ha)) < 0)
   continue;

  if ((*cb)(s, &di, arg) > 0)
   break;
 }

 close (s);
 free(rp.names);

 return (count);
}
