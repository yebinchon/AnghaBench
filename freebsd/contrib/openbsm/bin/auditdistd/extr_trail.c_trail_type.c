
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stat {int st_mode; } ;
typedef int DIR ;


 int AT_SYMLINK_NOFOLLOW ;
 int DT_UNKNOWN ;
 int IFTODT (int ) ;
 int LOG_ERR ;
 int PJDLOG_ASSERT (int) ;
 int dirfd (int *) ;
 int fstatat (int,char const*,struct stat*,int ) ;
 int pjdlog_errno (int ,char*,char const*) ;

__attribute__((used)) static uint8_t
trail_type(DIR *dirfp, const char *filename)
{
 struct stat sb;
 int dfd;

 PJDLOG_ASSERT(dirfp != ((void*)0));

 dfd = dirfd(dirfp);
 PJDLOG_ASSERT(dfd >= 0);
 if (fstatat(dfd, filename, &sb, AT_SYMLINK_NOFOLLOW) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to stat \"%s\"", filename);
  return (DT_UNKNOWN);
 }
 return (IFTODT(sb.st_mode));
}
