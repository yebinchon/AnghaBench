
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int ssize_t ;
struct TYPE_5__ {int length; } ;
typedef TYPE_1__ ng_hci_scodata_pkt_t ;
struct TYPE_6__ {int length; } ;
typedef TYPE_2__ ng_hci_event_pkt_t ;
struct TYPE_7__ {int length; } ;
typedef TYPE_3__ ng_hci_cmd_pkt_t ;
struct TYPE_8__ {int length; } ;
typedef TYPE_4__ ng_hci_acldata_pkt_t ;
typedef int fd_set ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 scalar_t__ EIO ;
 scalar_t__ ETIMEDOUT ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;




 int assert (int ) ;
 scalar_t__ errno ;
 int le16toh (int ) ;
 int read (int,void*,size_t) ;
 int select (int,int *,int *,int *,struct timeval*) ;

ssize_t
bt_devrecv(int s, void *buf, size_t size, time_t to)
{
 ssize_t n;

 if (buf == ((void*)0) || size == 0) {
  errno = EINVAL;
  return (-1);
 }

 if (to >= 0) {
  fd_set rfd;
  struct timeval tv;

  FD_ZERO(&rfd);
  FD_SET(s, &rfd);

  tv.tv_sec = to;
  tv.tv_usec = 0;

  while ((n = select(s + 1, &rfd, ((void*)0), ((void*)0), &tv)) < 0) {
   if (errno == EAGAIN || errno == EINTR)
    continue;

   return (-1);
  }

  if (n == 0) {
   errno = ETIMEDOUT;
   return (-1);
  }

  assert(FD_ISSET(s, &rfd));
 }

 while ((n = read(s, buf, size)) < 0) {
  if (errno == EAGAIN || errno == EINTR)
   continue;

  return (-1);
 }

 switch (*((uint8_t *) buf)) {
 case 130: {
  ng_hci_cmd_pkt_t *h = (ng_hci_cmd_pkt_t *) buf;

  if (n >= sizeof(*h) && n == (sizeof(*h) + h->length))
   return (n);
  } break;

 case 131: {
  ng_hci_acldata_pkt_t *h = (ng_hci_acldata_pkt_t *) buf;

  if (n >= sizeof(*h) && n == (sizeof(*h) + le16toh(h->length)))
   return (n);
  } break;

 case 128: {
  ng_hci_scodata_pkt_t *h = (ng_hci_scodata_pkt_t *) buf;

  if (n >= sizeof(*h) && n == (sizeof(*h) + h->length))
   return (n);
  } break;

 case 129: {
  ng_hci_event_pkt_t *h = (ng_hci_event_pkt_t *) buf;

  if (n >= sizeof(*h) && n == (sizeof(*h) + h->length))
   return (n);
  } break;
 }

 errno = EIO;
 return (-1);
}
