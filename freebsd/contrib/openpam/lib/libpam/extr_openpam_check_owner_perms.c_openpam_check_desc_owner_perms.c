
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;


 int EINVAL ;
 int EPERM ;
 int PAM_LOG_ERROR ;
 int S_ISREG (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ geteuid () ;
 int openpam_log (int ,char*,char const*) ;

int
openpam_check_desc_owner_perms(const char *name, int fd)
{
 uid_t root, arbitrator;
 struct stat sb;
 int serrno;

 root = 0;
 arbitrator = geteuid();
 if (fstat(fd, &sb) != 0) {
  serrno = errno;
  openpam_log(PAM_LOG_ERROR, "%s: %m", name);
  errno = serrno;
  return (-1);
 }
 if (!S_ISREG(sb.st_mode)) {
  openpam_log(PAM_LOG_ERROR,
      "%s: not a regular file", name);
  errno = EINVAL;
  return (-1);
 }
 if ((sb.st_uid != root && sb.st_uid != arbitrator) ||
     (sb.st_mode & (S_IWGRP|S_IWOTH)) != 0) {
  openpam_log(PAM_LOG_ERROR,
      "%s: insecure ownership or permissions", name);
  errno = EPERM;
  return (-1);
 }
 return (0);
}
