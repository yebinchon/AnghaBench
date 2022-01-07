
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int gid; int uid; } ;
typedef int socklen_t ;
typedef int gid_t ;
typedef int cred ;


 int SOL_SOCKET ;
 int SO_PEERCRED ;
 scalar_t__ getsockopt (int,int ,int ,struct ucred*,int*) ;

int
getpeereid(int s, uid_t *euid, gid_t *gid)
{
 struct ucred cred;
 socklen_t len = sizeof(cred);

 if (getsockopt(s, SOL_SOCKET, SO_PEERCRED, &cred, &len) < 0)
  return (-1);
 *euid = cred.uid;
 *gid = cred.gid;

 return (0);
}
