
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int setclr_flags (int *,int *,struct req_pkt*,int) ;

__attribute__((used)) static void
set_sys_flag(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 setclr_flags(srcadr, inter, inpkt, 1);
}
