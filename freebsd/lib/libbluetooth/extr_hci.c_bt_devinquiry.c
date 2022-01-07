
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int time_t ;
struct bt_devinquiry {int clock_offset; int dev_class; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct bt_devfilter {int dummy; } ;
struct TYPE_6__ {int num_responses; } ;
typedef TYPE_1__ ng_hci_inquiry_result_ep ;
struct TYPE_7__ {int clock_offset; int uclass; int page_scan_period_mode; int page_scan_rep_mode; int bdaddr; } ;
typedef TYPE_2__ ng_hci_inquiry_response ;
struct TYPE_8__ {int* lap; void* num_responses; void* inquiry_length; } ;
typedef TYPE_3__ ng_hci_inquiry_cp ;
struct TYPE_9__ {int event; } ;
typedef TYPE_4__ ng_hci_event_pkt_t ;
typedef int buf ;
typedef int _devname ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int HCI_DEVNAME_SIZE ;
 int MIN (int ,int) ;


 int NG_HCI_OCF_INQUIRY ;
 int NG_HCI_OGF_LINK_CONTROL ;
 int NG_HCI_OPCODE (int ,int ) ;
 int bdaddr_copy (int *,int *) ;
 int bt_devany_cb ;
 int bt_devclose (int) ;
 int bt_devenum (int ,char*) ;
 scalar_t__ bt_devfilter (int,struct bt_devfilter*,struct bt_devfilter*) ;
 int bt_devfilter_evt_set (struct bt_devfilter*,int) ;
 int bt_devopen (char const*) ;
 int bt_devrecv (int,void**,int,int) ;
 scalar_t__ bt_devsend (int,int ,TYPE_3__*,int) ;
 struct bt_devinquiry* calloc (int,int) ;
 int errno ;
 int free (struct bt_devinquiry*) ;
 int le16toh (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (char*,int ,int) ;

int
bt_devinquiry(char const *devname, time_t length, int num_rsp,
  struct bt_devinquiry **ii)
{
 uint8_t buf[320];
 char _devname[HCI_DEVNAME_SIZE];
 struct bt_devfilter f;
 ng_hci_inquiry_cp *cp = (ng_hci_inquiry_cp *) buf;
 ng_hci_event_pkt_t *e = (ng_hci_event_pkt_t *) buf;
 ng_hci_inquiry_result_ep *ep = (ng_hci_inquiry_result_ep *)(e+1);
 ng_hci_inquiry_response *ir;
 struct bt_devinquiry *i;
 int s, n;

 if (ii == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (devname == ((void*)0)) {
  memset(_devname, 0, sizeof(_devname));
  devname = _devname;

  n = bt_devenum(bt_devany_cb, _devname);
  if (n <= 0) {
   if (n == 0)
    *ii = ((void*)0);

   return (n);
  }
 }

 s = bt_devopen(devname);
 if (s < 0)
  return (-1);

 if (bt_devfilter(s, ((void*)0), &f) < 0) {
  bt_devclose(s);
  return (-1);
 }

 bt_devfilter_evt_set(&f, 129);
 bt_devfilter_evt_set(&f, 128);

 if (bt_devfilter(s, &f, ((void*)0)) < 0) {
  bt_devclose(s);
  return (-1);
 }


 cp->lap[0] = 0x33;
 cp->lap[1] = 0x8b;
 cp->lap[2] = 0x9e;







 if (length <= 0)
  length = 5;
 else if (length == 1)
  length = 2;
 else if (length > 62)
  length = 62;

 cp->inquiry_length = (uint8_t)((length * 100) / 128);

 if (num_rsp <= 0 || num_rsp > 255)
  num_rsp = 8;
 cp->num_responses = (uint8_t) num_rsp;

 i = *ii = calloc(num_rsp, sizeof(struct bt_devinquiry));
 if (i == ((void*)0)) {
  bt_devclose(s);
  errno = ENOMEM;
  return (-1);
 }

 if (bt_devsend(s,
  NG_HCI_OPCODE(NG_HCI_OGF_LINK_CONTROL, NG_HCI_OCF_INQUIRY),
   cp, sizeof(*cp)) < 0) {
  free(i);
  bt_devclose(s);
  return (-1);
 }

wait_for_more:

 n = bt_devrecv(s, buf, sizeof(buf), length);
 if (n < 0) {
  free(i);
  bt_devclose(s);
  return (-1);
 }

 if (n < sizeof(ng_hci_event_pkt_t)) {
  free(i);
  bt_devclose(s);
  errno = EIO;
  return (-1);
 }

 switch (e->event) {
 case 129:
  break;

 case 128:
  ir = (ng_hci_inquiry_response *)(ep + 1);

  for (n = 0; n < MIN(ep->num_responses, num_rsp); n ++) {
   bdaddr_copy(&i->bdaddr, &ir->bdaddr);
   i->pscan_rep_mode = ir->page_scan_rep_mode;
   i->pscan_period_mode = ir->page_scan_period_mode;
   memcpy(i->dev_class, ir->uclass, sizeof(i->dev_class));
   i->clock_offset = le16toh(ir->clock_offset);

   ir ++;
   i ++;
   num_rsp --;
  }


 default:
  goto wait_for_more;

 }

 bt_devclose(s);

 return (i - *ii);
}
