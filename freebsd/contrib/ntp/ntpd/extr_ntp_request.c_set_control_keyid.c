
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int ctl_auth_keyid ;
 int set_keyid_checked (int *,char*,int *,int *,struct req_pkt*) ;

__attribute__((used)) static void
set_control_keyid(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 set_keyid_checked(&ctl_auth_keyid, "control",
     srcadr, inter, inpkt);
}
