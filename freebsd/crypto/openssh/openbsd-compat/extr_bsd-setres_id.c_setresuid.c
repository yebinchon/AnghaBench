
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 int ENOSYS ;
 int errno ;
 int error (char*,scalar_t__,char*) ;
 scalar_t__ seteuid (scalar_t__) ;
 scalar_t__ setreuid (scalar_t__,scalar_t__) ;
 scalar_t__ setuid (scalar_t__) ;
 char* strerror (int) ;

int
setresuid(uid_t ruid, uid_t euid, uid_t suid)
{
 int ret = 0, saved_errno;

 if (ruid != suid) {
  errno = ENOSYS;
  return -1;
 }
 if (seteuid(euid) < 0) {
  saved_errno = errno;
  error("seteuid %u: %.100s", euid, strerror(errno));
  errno = saved_errno;
  ret = -1;
 }

 if (setuid(ruid) < 0) {
  saved_errno = errno;
  error("setuid %u: %.100s", ruid, strerror(errno));
  errno = saved_errno;
  ret = -1;
 }

 return ret;
}
