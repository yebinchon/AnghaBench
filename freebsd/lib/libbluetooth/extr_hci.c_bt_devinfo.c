
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_hci {int hci_node; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int bytes_sent; int bytes_recv; int sco_sent; int sco_recv; int acl_sent; int acl_recv; int evnt_recv; int cmd_sent; } ;
struct TYPE_3__ {int acl_free; int acl_pkts; int acl_size; int sco_free; int sco_pkts; int sco_size; int cmd_free; } ;
struct ng_btsocket_hci_raw_node_state {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_stat {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_role_switch {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_packet_mask {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_link_policy_mask {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_features {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_debug {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_buffer {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct ng_btsocket_hci_raw_node_bdaddr {int debug; int role_switch; int packet_mask; int policy_mask; TYPE_2__ stat; TYPE_1__ buffer; int features; int bdaddr; int state; } ;
struct bt_devinfo {int debug; int role_switch_info; int packet_type_info; int link_policy_info; int bytes_sent; int bytes_recv; int sco_sent; int sco_recv; int acl_sent; int acl_recv; int evnt_recv; int cmd_sent; int acl_free; int acl_pkts; int acl_size; int sco_free; int sco_pkts; int sco_size; int cmd_free; int features; int bdaddr; int state; int devname; } ;
typedef int socklen_t ;
typedef int ha ;


 int EINVAL ;
 int SIOC_HCI_RAW_NODE_GET_BDADDR ;
 int SIOC_HCI_RAW_NODE_GET_BUFFER ;
 int SIOC_HCI_RAW_NODE_GET_DEBUG ;
 int SIOC_HCI_RAW_NODE_GET_FEATURES ;
 int SIOC_HCI_RAW_NODE_GET_LINK_POLICY_MASK ;
 int SIOC_HCI_RAW_NODE_GET_PACKET_MASK ;
 int SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH ;
 int SIOC_HCI_RAW_NODE_GET_STAT ;
 int SIOC_HCI_RAW_NODE_GET_STATE ;
 int bdaddr_copy (int *,int *) ;
 int bt_devclose (int) ;
 int bt_devopen (int ) ;
 int errno ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_state*,int) ;
 int memcpy (int ,int ,int) ;
 int strlcpy (int ,int ,int) ;

int
bt_devinfo(struct bt_devinfo *di)
{
 union {
  struct ng_btsocket_hci_raw_node_state r0;
  struct ng_btsocket_hci_raw_node_bdaddr r1;
  struct ng_btsocket_hci_raw_node_features r2;
  struct ng_btsocket_hci_raw_node_buffer r3;
  struct ng_btsocket_hci_raw_node_stat r4;
  struct ng_btsocket_hci_raw_node_link_policy_mask r5;
  struct ng_btsocket_hci_raw_node_packet_mask r6;
  struct ng_btsocket_hci_raw_node_role_switch r7;
  struct ng_btsocket_hci_raw_node_debug r8;
 } rp;
 struct sockaddr_hci ha;
 socklen_t halen;
 int s, rval;

 if (di == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 s = bt_devopen(di->devname);
 if (s < 0)
  return (-1);

 rval = -1;

 halen = sizeof(ha);
 if (getsockname(s, (struct sockaddr *) &ha, &halen) < 0)
  goto bad;
 strlcpy(di->devname, ha.hci_node, sizeof(di->devname));

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_STATE, &rp.r0, sizeof(rp.r0)) < 0)
  goto bad;
 di->state = rp.r0.state;

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_BDADDR, &rp.r1, sizeof(rp.r1)) < 0)
  goto bad;
 bdaddr_copy(&di->bdaddr, &rp.r1.bdaddr);

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_FEATURES, &rp.r2, sizeof(rp.r2)) < 0)
  goto bad;
 memcpy(di->features, rp.r2.features, sizeof(di->features));

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_BUFFER, &rp.r3, sizeof(rp.r3)) < 0)
  goto bad;
 di->cmd_free = rp.r3.buffer.cmd_free;
 di->sco_size = rp.r3.buffer.sco_size;
 di->sco_pkts = rp.r3.buffer.sco_pkts;
 di->sco_free = rp.r3.buffer.sco_free;
 di->acl_size = rp.r3.buffer.acl_size;
 di->acl_pkts = rp.r3.buffer.acl_pkts;
 di->acl_free = rp.r3.buffer.acl_free;

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_STAT, &rp.r4, sizeof(rp.r4)) < 0)
  goto bad;
 di->cmd_sent = rp.r4.stat.cmd_sent;
 di->evnt_recv = rp.r4.stat.evnt_recv;
 di->acl_recv = rp.r4.stat.acl_recv;
 di->acl_sent = rp.r4.stat.acl_sent;
 di->sco_recv = rp.r4.stat.sco_recv;
 di->sco_sent = rp.r4.stat.sco_sent;
 di->bytes_recv = rp.r4.stat.bytes_recv;
 di->bytes_sent = rp.r4.stat.bytes_sent;

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_LINK_POLICY_MASK,
   &rp.r5, sizeof(rp.r5)) < 0)
  goto bad;
 di->link_policy_info = rp.r5.policy_mask;

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_PACKET_MASK,
   &rp.r6, sizeof(rp.r6)) < 0)
  goto bad;
 di->packet_type_info = rp.r6.packet_mask;

  if (ioctl(s, SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH,
   &rp.r7, sizeof(rp.r7)) < 0)
  goto bad;
 di->role_switch_info = rp.r7.role_switch;

 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_DEBUG, &rp.r8, sizeof(rp.r8)) < 0)
  goto bad;
 di->debug = rp.r8.debug;

 rval = 0;
bad:
 bt_devclose(s);

 return (rval);
}
