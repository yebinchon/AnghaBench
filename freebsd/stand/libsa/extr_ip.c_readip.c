
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ time_t ;
struct iodesc {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ errno ;
 scalar_t__ getsecs () ;
 scalar_t__ readipv4 (struct iodesc*,void**,void**,scalar_t__,int ) ;

ssize_t
readip(struct iodesc *d, void **pkt, void **payload, time_t tleft,
    uint8_t proto)
{
 time_t t;
 ssize_t ret = -1;

 t = getsecs();
 while ((getsecs() - t) < tleft) {
  errno = 0;
  ret = readipv4(d, pkt, payload, tleft, proto);
  if (ret >= 0)
   return (ret);

  if (errno != EAGAIN)
   return (-1);
 }

 errno = ETIMEDOUT;
 return (-1);
}
