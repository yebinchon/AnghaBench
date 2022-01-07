
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int off_t ;


 int S_ISREG (int ) ;

 int VE_FINGERPRINT_NONE ;


 int VE_FINGERPRINT_WRONG ;
 char* fingerprint_info_lookup (int,char const*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int ve_error_set (char*,char const*) ;
 int verify_fingerprint (int,char const*,char*,int ) ;

int
verify_fd(int fd, const char *path, off_t off, struct stat *stp)
{
 struct stat st;
 char *cp;
 int rc;

 if (!stp) {
  if (fstat(fd, &st) == 0)
   stp = &st;
 }
 if (stp && !S_ISREG(stp->st_mode))
  return (0);
 cp = fingerprint_info_lookup(fd, path);
 if (!cp) {
  ve_error_set("%s: no entry", path);
  return (VE_FINGERPRINT_NONE);
 }
 rc = verify_fingerprint(fd, path, cp, off);
 switch (rc) {
 case 129:
 case 130:
 case 128:
  return (rc);
 default:
  return (VE_FINGERPRINT_WRONG);
 }
}
