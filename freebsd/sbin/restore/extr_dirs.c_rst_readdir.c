
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct direct {scalar_t__ d_reclen; scalar_t__ d_ino; int d_name; } ;
struct TYPE_3__ {scalar_t__ dd_loc; scalar_t__ dd_size; scalar_t__ dd_buf; int dd_fd; } ;
typedef TYPE_1__ RST_DIR ;


 scalar_t__ DIRBLKSIZ ;
 int dprintf (int ,char*,...) ;
 scalar_t__ maxino ;
 scalar_t__ read (int ,scalar_t__,scalar_t__) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;

struct direct *
rst_readdir(RST_DIR *dirp)
{
 struct direct *dp;

 for (;;) {
  if (dirp->dd_loc == 0) {
   dirp->dd_size = read(dirp->dd_fd, dirp->dd_buf,
       DIRBLKSIZ);
   if (dirp->dd_size <= 0) {
    dprintf(stderr, "error reading directory\n");
    return (((void*)0));
   }
  }
  if (dirp->dd_loc >= dirp->dd_size) {
   dirp->dd_loc = 0;
   continue;
  }
  dp = (struct direct *)(dirp->dd_buf + dirp->dd_loc);
  if (dp->d_reclen == 0 ||
      dp->d_reclen > DIRBLKSIZ + 1 - dirp->dd_loc) {
   dprintf(stderr, "corrupted directory: bad reclen %d\n",
    dp->d_reclen);
   return (((void*)0));
  }
  dirp->dd_loc += dp->d_reclen;
  if (dp->d_ino == 0 && strcmp(dp->d_name, "/") == 0)
   return (((void*)0));
  if (dp->d_ino >= maxino) {
   dprintf(stderr, "corrupted directory: bad inum %d\n",
    dp->d_ino);
   continue;
  }
  return (dp);
 }
}
