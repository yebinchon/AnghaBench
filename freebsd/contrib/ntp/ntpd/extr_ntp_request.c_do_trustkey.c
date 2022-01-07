
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct req_pkt {int u; int err_nitems; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int INFO_NITEMS (int ) ;
 int INFO_OKAY ;
 int authtrust (int ,int ) ;
 int req_ack (int *,int *,struct req_pkt*,int ) ;

__attribute__((used)) static void
do_trustkey(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt,
 u_long trust
 )
{
 register uint32_t *kp;
 register int items;

 items = INFO_NITEMS(inpkt->err_nitems);
 kp = (uint32_t *)&inpkt->u;
 while (items-- > 0) {
  authtrust(*kp, trust);
  kp++;
 }

 req_ack(srcadr, inter, inpkt, INFO_OKAY);
}
