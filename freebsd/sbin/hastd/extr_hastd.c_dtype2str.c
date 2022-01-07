
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 scalar_t__ S_ISWHT (int ) ;

__attribute__((used)) static const char *
dtype2str(mode_t mode)
{

 if (S_ISBLK(mode))
  return ("block device");
 else if (S_ISCHR(mode))
  return ("character device");
 else if (S_ISDIR(mode))
  return ("directory");
 else if (S_ISFIFO(mode))
  return ("pipe or FIFO");
 else if (S_ISLNK(mode))
  return ("symbolic link");
 else if (S_ISREG(mode))
  return ("regular file");
 else if (S_ISSOCK(mode))
  return ("socket");
 else if (S_ISWHT(mode))
  return ("whiteout");
 else
  return ("unknown");
}
