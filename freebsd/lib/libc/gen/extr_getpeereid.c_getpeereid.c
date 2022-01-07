
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xuc ;
typedef int uid_t ;
struct xucred {scalar_t__ cr_version; int cr_gid; int cr_uid; } ;
typedef int socklen_t ;
typedef int gid_t ;


 int EINVAL ;
 int LOCAL_PEERCRED ;
 scalar_t__ XUCRED_VERSION ;
 int _getsockopt (int,int ,int ,struct xucred*,int*) ;
 int errno ;

int
getpeereid(int s, uid_t *euid, gid_t *egid)
{
 struct xucred xuc;
 socklen_t xuclen;
 int error;

 xuclen = sizeof(xuc);
 error = _getsockopt(s, 0, LOCAL_PEERCRED, &xuc, &xuclen);
 if (error != 0)
  return (error);
 if (xuc.cr_version != XUCRED_VERSION) {
  errno = EINVAL;
  return (-1);
 }
 *euid = xuc.cr_uid;
 *egid = xuc.cr_gid;
 return (0);
}
