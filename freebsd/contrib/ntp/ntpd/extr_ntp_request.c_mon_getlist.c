
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int INFO_ERR_NODATA ;
 int req_ack (int *,int *,struct req_pkt*,int ) ;

__attribute__((used)) static void
mon_getlist(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 req_ack(srcadr, inter, inpkt, INFO_ERR_NODATA);
}
