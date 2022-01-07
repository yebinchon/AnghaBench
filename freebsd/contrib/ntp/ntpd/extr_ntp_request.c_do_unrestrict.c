
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int RESTRICT_REMOVE ;
 int do_restrict (int *,int *,struct req_pkt*,int ) ;

__attribute__((used)) static void
do_unrestrict(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 do_restrict(srcadr, inter, inpkt, RESTRICT_REMOVE);
}
