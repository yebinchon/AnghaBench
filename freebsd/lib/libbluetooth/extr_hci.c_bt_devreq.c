
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct bt_devreq {scalar_t__ rlen; int event; int * rparam; int opcode; int clen; int cparam; } ;
struct bt_devfilter {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ type; int event; int status; int opcode; } ;
typedef TYPE_1__ ng_hci_event_pkt_t ;
typedef TYPE_1__ ng_hci_command_status_ep ;
typedef TYPE_1__ ng_hci_command_compl_ep ;
typedef int new ;
typedef int buf ;


 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;


 scalar_t__ NG_HCI_EVENT_PKT ;
 scalar_t__ bt_devfilter (int,struct bt_devfilter*,struct bt_devfilter*) ;
 int bt_devfilter_evt_set (struct bt_devfilter*,int) ;
 int bt_devfilter_pkt_set (struct bt_devfilter*,scalar_t__) ;
 scalar_t__ bt_devrecv (int,int *,int,scalar_t__) ;
 scalar_t__ bt_devsend (int,int ,int ,int ) ;
 int errno ;
 int htole16 (int ) ;
 int memcpy (int *,TYPE_1__*,scalar_t__) ;
 int memset (struct bt_devfilter*,int ,int) ;
 scalar_t__ time (int *) ;

int
bt_devreq(int s, struct bt_devreq *r, time_t to)
{
 uint8_t buf[320];
 ng_hci_event_pkt_t *e = (ng_hci_event_pkt_t *) buf;
 ng_hci_command_compl_ep *cc = (ng_hci_command_compl_ep *)(e+1);
 ng_hci_command_status_ep *cs = (ng_hci_command_status_ep*)(e+1);
 struct bt_devfilter old, new;
 time_t t_end;
 uint16_t opcode;
 ssize_t n;
 int error;

 if (s < 0 || r == ((void*)0) || to < 0) {
  errno = EINVAL;
  return (-1);
 }

 if ((r->rlen == 0 && r->rparam != ((void*)0)) ||
     (r->rlen > 0 && r->rparam == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }

 memset(&new, 0, sizeof(new));
 bt_devfilter_pkt_set(&new, NG_HCI_EVENT_PKT);
 bt_devfilter_evt_set(&new, 129);
 bt_devfilter_evt_set(&new, 128);
 if (r->event != 0)
  bt_devfilter_evt_set(&new, r->event);

 if (bt_devfilter(s, &new, &old) < 0)
  return (-1);

 error = 0;

 n = bt_devsend(s, r->opcode, r->cparam, r->clen);
 if (n < 0) {
  error = errno;
  goto out;
 }

 opcode = htole16(r->opcode);
 t_end = time(((void*)0)) + to;

 do {
  to = t_end - time(((void*)0));
  if (to < 0)
   to = 0;

  n = bt_devrecv(s, buf, sizeof(buf), to);
  if (n < 0) {
   error = errno;
   goto out;
  }

  if (e->type != NG_HCI_EVENT_PKT) {
   error = EIO;
   goto out;
  }

  n -= sizeof(*e);

  switch (e->event) {
  case 129:
   if (cc->opcode == opcode) {
    n -= sizeof(*cc);

    if (r->rlen >= n) {
     r->rlen = n;
     memcpy(r->rparam, cc + 1, r->rlen);
    }

    goto out;
   }
   break;

  case 128:
   if (cs->opcode == opcode) {
    if (r->event != 128) {
     if (cs->status != 0) {
      error = EIO;
      goto out;
     }
    } else {
     if (r->rlen >= n) {
      r->rlen = n;
      memcpy(r->rparam, cs, r->rlen);
     }

     goto out;
    }
   }
   break;

  default:
   if (e->event == r->event) {
    if (r->rlen >= n) {
     r->rlen = n;
     memcpy(r->rparam, e + 1, r->rlen);
    }

    goto out;
   }
   break;
  }
 } while (to > 0);

 error = ETIMEDOUT;
out:
 bt_devfilter(s, &old, ((void*)0));

 if (error != 0) {
  errno = error;
  return (-1);
 }

 return (0);
}
