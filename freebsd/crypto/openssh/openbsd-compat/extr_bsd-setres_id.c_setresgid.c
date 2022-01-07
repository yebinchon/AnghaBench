
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ gid_t ;


 int ENOSYS ;
 int errno ;
 int error (char*,scalar_t__,char*) ;
 scalar_t__ setegid (scalar_t__) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setregid (scalar_t__,scalar_t__) ;
 char* strerror (int) ;

int
setresgid(gid_t rgid, gid_t egid, gid_t sgid)
{
 int ret = 0, saved_errno;

 if (rgid != sgid) {
  errno = ENOSYS;
  return -1;
 }
 if (setegid(egid) < 0) {
  saved_errno = errno;
  error("setegid %u: %.100s", (u_int)egid, strerror(errno));
  errno = saved_errno;
  ret = -1;
 }
 if (setgid(rgid) < 0) {
  saved_errno = errno;
  error("setgid %u: %.100s", rgid, strerror(errno));
  errno = saved_errno;
  ret = -1;
 }

 return ret;
}
