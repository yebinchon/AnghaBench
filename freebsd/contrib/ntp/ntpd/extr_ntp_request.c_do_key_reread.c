
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int INFO_OKAY ;
 int req_ack (int *,int *,struct req_pkt*,int ) ;
 int rereadkeys () ;

__attribute__((used)) static void
do_key_reread(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 rereadkeys();
 req_ack(srcadr, inter, inpkt, INFO_OKAY);
}
