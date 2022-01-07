
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int do_setclr_trap (int *,int *,struct req_pkt*,int ) ;

__attribute__((used)) static void
req_clr_trap(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 do_setclr_trap(srcadr, inter, inpkt, 0);
}
