
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct hast_resource {char* hr_localpath; int hr_localfd; int hr_local_mediasize; int hr_local_sectorsize; } ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int EFTYPE ;
 int LOG_ERR ;
 int O_RDONLY ;
 int O_RDWR ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int errno ;
 int fstat (int,struct stat*) ;
 int ioctl (int,int ,int*) ;
 int open (char*,int ) ;
 int pjdlog_errno (int ,char*,char*) ;
 int pjdlog_error (char*,char*) ;

int
provinfo(struct hast_resource *res, bool dowrite)
{
 struct stat sb;

 PJDLOG_ASSERT(res->hr_localpath != ((void*)0) &&
     res->hr_localpath[0] != '\0');

 if (res->hr_localfd == -1) {
  res->hr_localfd = open(res->hr_localpath,
      dowrite ? O_RDWR : O_RDONLY);
  if (res->hr_localfd == -1) {
   pjdlog_errno(LOG_ERR, "Unable to open %s",
       res->hr_localpath);
   return (-1);
  }
 }
 if (fstat(res->hr_localfd, &sb) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to stat %s", res->hr_localpath);
  return (-1);
 }
 if (S_ISCHR(sb.st_mode)) {



  if (ioctl(res->hr_localfd, DIOCGMEDIASIZE,
      &res->hr_local_mediasize) == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable obtain provider %s mediasize",
       res->hr_localpath);
   return (-1);
  }
  if (ioctl(res->hr_localfd, DIOCGSECTORSIZE,
      &res->hr_local_sectorsize) == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable obtain provider %s sectorsize",
       res->hr_localpath);
   return (-1);
  }
 } else if (S_ISREG(sb.st_mode)) {




  res->hr_local_mediasize = sb.st_size;
  res->hr_local_sectorsize = 512;
 } else {



  pjdlog_error("%s is neither GEOM provider nor regular file.",
      res->hr_localpath);
  errno = EFTYPE;
  return (-1);
 }
 return (0);
}
