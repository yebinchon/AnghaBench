
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int gid_t ;
struct TYPE_4__ {scalar_t__ buf; } ;
struct TYPE_5__ {int xp_fd; TYPE_1__ xp_rtaddr; } ;
typedef TYPE_2__ SVCXPRT ;


 scalar_t__ AF_LOCAL ;
 int getpeereid (int,int *,int *) ;

int
__rpc_get_local_uid(SVCXPRT *transp, uid_t *uid) {
 int sock, ret;
 gid_t egid;
 uid_t euid;
 struct sockaddr *sa;

 sock = transp->xp_fd;
 sa = (struct sockaddr *)transp->xp_rtaddr.buf;
 if (sa->sa_family == AF_LOCAL) {
  ret = getpeereid(sock, &euid, &egid);
  if (ret == 0)
   *uid = euid;
  return (ret);
 } else
  return (-1);
}
