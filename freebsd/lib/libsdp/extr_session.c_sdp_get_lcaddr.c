
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_l2cap {int l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef TYPE_1__* sdp_session_p ;
typedef int sa ;
typedef int int32_t ;
typedef int bdaddr_t ;
struct TYPE_2__ {int flags; scalar_t__ error; int s; } ;


 scalar_t__ EINVAL ;
 int SDP_SESSION_LOCAL ;
 int bdaddr_copy (int *,int *) ;
 scalar_t__ errno ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;

int32_t
sdp_get_lcaddr(void *xss, bdaddr_t *l)
{
 sdp_session_p ss = (sdp_session_p) xss;
 struct sockaddr_l2cap sa;
 socklen_t size;

 if (l == ((void*)0) || ss == ((void*)0) || ss->flags & SDP_SESSION_LOCAL) {
  ss->error = EINVAL;
  goto fail;
 }

 size = sizeof(sa);
 if (getsockname(ss->s, (struct sockaddr *)&sa, &size) == 0) {
  bdaddr_copy(l, &sa.l2cap_bdaddr);
  ss->error = 0;
 } else
  ss->error = errno;
fail:
 return ((ss->error == 0) ? 0 : -1);
}
